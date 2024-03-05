(function () {
    app = {};
 
    app.$window = $(window);
    app.$html = $('html');
    app.$body = $('body');
    app.$nav = $('#nav');
    app.$footer__nav = $('.footer__nav--fixed');

    app.includeIds = [
        'reviewOrder',
        'paymentForm',
        'calltoAction'
    ];

    var modal__loaded = false;
    var ui__captured = false;
 
    // public method : lazy loads an image on demand
    app.getImage = function () {
        var $img = $(this);
        if ( typeof $img.data('src-img') === 'undefined' || $img.hasClass('has-image') ) return false;
 
        $img.append($('<img/>', {
            src : $img.data('src-img'), alt : $img.data('alt')
        })).addClass('has-image')
            .find('img').on('load', function () {
                $(this).addClass('fade-content-in');
            });
    };
 
    // public method : lazy loads an iframe on demand
    app.getIframe = function () {
        var $iframe = $(this);
        if ( typeof $iframe.data('src-iframe') === 'undefined' || $iframe.hasClass('has-iframe') ) return false;
 
        var iframe = {};
        iframe.src = $iframe.data('src-iframe');
 
        if ( iframe.src !== '' ) {
            if ( typeof $iframe.data('src-attr') !== 'undefined' ) {
                $.each($iframe.data('src-attr'), function (property, value) {
                    iframe[property] = value;
                });
            }
    
            $iframe.append($('<iframe/>', iframe))
                .addClass('has-iframe')
                .find('iframe').on('load', function () {
                    $(this).addClass('fade-content-in');
                });
        }
    };
 
    // public method : gets status of when nav is sticky or static
    app.isStickyNav = function () {
        return app.$nav.hasClass('header__nav--fixed') ? true : false;
    };
 
    // public method : gets dynamic height values from static and sticky nav
    app.getHeightFromStickyNav = function () {
        var static__height = app.$nav.outerHeight();
        var $defer = new $.Deferred();
 
        window.scrollTo(0, 1);
        setTimeout(function () {
            $defer.resolve({ static : static__height, sticky : app.$nav.outerHeight() });
        }, 1);
        
        return $defer.promise();
    };

    // public method : updates appearance of sticky footer nav
    app.toggleStickyFooter = function ($this, arr) {
        var includeIds = arr || [];
        if ( typeof $this.attr('data-sticky-footer') !== 'undefined' || $.inArray($this.attr('id'), includeIds) !== -1 ) {
            var status = $this.attr('data-sticky-footer');
            if ( status === 'hide' ) {
                app.$footer__nav.addClass('footer__nav--hidden');
            }
        } else {
            app.$footer__nav.removeClass('footer__nav--hidden');
        }
    };
 
    // private method : lazy loads content progressively
    function getProgressiveContent () {
        $('[data-lazy-load-progressive]').each(function () {
            var $self = $(this);
            var capture = false;
            app.$window.scroll(function () {
                // check if scroll position is within range of the target area
                if ((app.$window.scrollTop() + (app.$window.height() / $self.data('lazy-load-progressive'))) > $self.offset().top) {
                    if ( !capture ) {
                        capture = true;
                        // add support to load in background image
                        if ( typeof $self.attr('data-lazy-load-background') !== 'undefined' ) {
                            $self.attr('data-lazy-load-background', true);
                        }
 
                        // get inline images
                        $self.find('[data-src-img]').each(app.getImage);
                        // get inline iframes
                        $self.find('[data-src-iframe]').each(app.getIframe);
                        // get sliders 
                        $self.find('[data-lazy-load-slider]').each(getSlider);
 
                        return false;
                    }
                }
            });
        });
    }
 
    // private method : gets content on demand (handles jump links) 
    function getContentOnDemand (hash) {
        var $hash = $(hash);
 
        function loadContent () {
            app.$html.removeClass('set-preload');
 
            try {
                $hash.find('[data-src-img]').each(app.getImage);
                $hash.find('[data-src-iframe]').each(app.getIframe);
    
                $hash.next().find('[data-src-img]').each(app.getImage);
                $hash.next().find('[data-src-iframe]').each(app.getIframe);
            } catch (e) {
                console.log(e.message);
            }
            addSlick();
            getProgressiveContent();
        }
 
        if ('scrollRestoration' in history) history.scrollRestoration = 'manual';
        app.getHeightFromStickyNav().done(function (offset) {
            window.scrollTo(0, $hash.position().top - offset.sticky);
            app.toggleStickyFooter($hash, app.includeIdss || []);
            loadContent();
        });
    }
    
 
    // private method : gets the slider and adds Slick js plugin support
    function getSlider ($this) {
        var $this = $(this);
        if ( typeof $this.data('lazy-load-slider') === 'undefined' ) return false;
        try {
            if ( typeof $.fn.slick === 'function' ) {
                app.$window.trigger('slick:progressive:' + $this.data('lazy-load-slider'));
            } else {
                setTimeout(function () {
                    app.$window.trigger('slick:progressive:' + $this.data('lazy-load-slider'));
                }, 300);
            }
        } catch (e) {
            console.log(e.message);
        }
    }
 
    // private method : adds support for Slick js plugin
    function addSlick () {
        $.when(
            $.get('/css/slick.css?appV=' + DtmContext.ApplicationVersion),
            $.getScript('/js/slick.js?appV=' + DtmContext.ApplicationVersion)
        ).done(function (css, js) {
            $('<style/>', { html : css[0] }).appendTo(app.$body);
            app.$window.trigger({ 
                type : 'slick:ready', 
                slick : { css : css, js : js }
            });
        }).fail(function () {
            console.error('failed to load a resource:', this);
        });
    }
 
    // private method : add popup support
    function addPopup () {
        $('.has-popup').on('click', function (event) {
            event.preventDefault();
            var href = $(this).attr('href');
            try {
                window.open(href, 'popup', 'width=475, height=420, toolbars=no, menubar=no, location=no, scrollbars=yes, resizable=no, status=no');
            } catch (e) {
                console.log(e.message);
            }
            return false;
        });
    }
 
    // private method : listens for modal clicks and handles the modal 
    function addModalListener () {
        var $modal__link = $('.get-modal');
 
        function getModal ($this) {
            var $modal = $($this.attr('data-href'));
 
            function closeModal ($modal) {
                app.$body.addClass('overlay--hidden');
                $modal.off('click');
                $modal.find('.modal__close').off('click');
                $modal.one('animationend', function () {
                    app.$body.removeClass('overlay--visible overlay--hidden overlay--modal');
                    $modal.removeClass('modal--visible');
                });
            }
 
            function showModal ($modal) {
                var $img = $modal.find('img');

                function displayModal () {
                    app.$body.removeClass('overlay--loading').addClass('overlay--modal');
                    $modal.addClass('modal--visible');
                    $modal.find('.modal__close').on('click', function () {
                        closeModal($modal);
                    });
                    $modal.on('click', function (e) {
                        if ( e.currentTarget === e.target && !$modal.hasClass('modal--hidden') ) {
                            closeModal($modal);
                        }
                    });

                    app.$window.on('orientationchange', function () {
                        $modal.addClass('modal--change');
                    });
                }

                if ( !$img.hasClass('has-image') ) {
                    $img.on('load', function () {
                        $(this).addClass('has-image');
                        displayModal();
                    });
                } else {
                    displayModal();
                }
            }
 
            function addModal ($this, html) {
                app.$body.append(html);
                var $modal = $($this.attr('data-href'));
                showModal($modal);
            }
 
            if ( $modal.length === 0 ) {
                switch ( true ) {
                    case $this.hasClass('get-modal--remote'):
                        var remote = $this.data('remote-name');
                        if ( typeof remote === 'undefined' ) return false;
                        $.get(remote + DtmContext.ApplicationExtension, { remoteType : remote }, function (response) {
                            addModal($this, response.current.desc);
                        });
                        break;
                    case $this.hasClass('get-modal--snippet'):
                        var snippet = $this.data('snippet-name');
                        if ( typeof snippet === 'undefined' ) return false;
                        $.get('/StaticContent.txt?filename=' + snippet, function (response) {
                            addModal($this, response);
                        });
                        break;
                }
            } else {
                showModal($modal);
            }
        }
 
        $modal__link.on('click', function (event) {
            //event.preventDefault();
            var $this = $(this);
            app.$body.addClass('overlay--visible overlay--loading');
            if ( !modal__loaded ) {
                $.when(
                    $.get('/css/modal.css?appV=' + DtmContext.ApplicationVersion)
                ).done(function (css) {
                    modal__loaded = true;
                    $('<style/>', { html : css }).appendTo(app.$body);
                    getModal($this);
                });
            } else {
                getModal($this);
            }
        });
        
    }
 
    // private method : toggles hamburger menu
    function toggleHamburger () {
        var $ham = $('.ham');
        var $ham__link = $ham.find('a');
        var $ham__input = $ham.find('#header__nav');
 
        $ham__link.on('click', function () {
            $ham__input.prop('checked', false);
        });
    }
 
    app.updateFixedNavTargetOffset = function ($trigger, $anchor, $fire) {
        var $html__body = $('html, body');
        var $hash__link = $trigger || $('a[href*="#"]');

        function scrollToTarget ($target) {
            $html__body.animate({
                scrollTop : $target.position().top - app.$nav.outerHeight()
            }, 100);
            app.toggleStickyFooter($target, app.includeIds || []);
        }
 
        function applyHash () {
            var regex = /(#[^?]*)/gi;
            var hash = $anchor;
            var $target = $($anchor) || false;

            if ( !$anchor ) {
                hash = regex.exec($(this).attr('href'))[0];
                $target = $(hash) || false;
            }
 
            if ( $target.length > 0 ) {
                history.pushState(null, null, DtmContext.PageCode.toLowerCase() + DtmContext.ApplicationExtension + hash);
                if ( app.isStickyNav() ) {
                    scrollToTarget($target);
                } else {
                    app.getHeightFromStickyNav().done(function (offset) {
                        scrollToTarget($target);
                    });
                }
            } else {
                return true;
            }
        }

        if ( $fire ) {
            applyHash();
        } else {
            $hash__link.on('click', applyHash);
        }
    }
 
    function init () {
        if ( window.location.hash ) {
            getContentOnDemand(window.location.hash);
        } else {
            addSlick();
            getProgressiveContent();
        }
 
        addPopup();
        addModalListener();
        toggleHamburger();


        app.updateFixedNavTargetOffset();
 
        try {
            onAppReady(app);
            app.$window.trigger({ type : 'app:ready', app : app });
        } catch (e) {
            console.log(e.message);
        }
    }
 
    init();
 
})();