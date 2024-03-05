<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<% if (DtmContext.Page.IsStartPageType) { %>

	<script type="text/javascript">

        (function () {
            var EIPU = function (params) {
                return new Library(params);
            };

            var Library = function (params) {
                var self = this;
                for (var x in params) {
                    this[x] = params[x];
                }
                for (var i = 0; i < params.length; i++) {
                    this[i] = params[i];
                }
                this.length = params.length;
                this.tickTock = 0;

                if (self.C != '') {
                    $('#specialOfferContent').html(self.C);
                }

                if (self.U != '') {
                    $('#specialOfferContent').find('a').attr('href', self.U);
                }

                if (self.I != '') {
                    $('#specialOfferContent').find('img').attr('src', self.I);
                }

                function ouibounce(el, config) {
                    var config = config || {},
                        aggressive = config.aggressive || false,
                        sensitivity = setDefault(config.sensitivity, 20),
                        timer = setDefault(config.timer, 1000),
                        delay = setDefault(config.delay, 0),
                        callback = config.callback || function () { },
                        cookieExpire = setDefaultCookieExpire(config.cookieExpire) || '',
                        cookieDomain = config.cookieDomain ? ';domain=' + config.cookieDomain : '',
                        sitewide = config.sitewide === true ? ';path=/' : '',
                        _delayTimer = null,
                        _html = document.documentElement;

                    //setTimeout(tickTock, 1000);
                    //function tickTock() {
                    //    if (self.tickTock >= self.IT) {
                    //        _fireAndCallback();
                    //    } else {
                    //        self.tickTock += 1;
                    //        if (window.location.href.indexOf("debugiepu") > -1) {
                    //            console.log("Tick: " + self.tickTock);
                    //        }
                    //        setTimeout(tickTock, 1000);
                    //    }
                    //}

                    function resetTickTock() {
                        if (self.CIOA) {
                            self.tickTock = 0;
                        }
                    }

                    function setDefault(_property, _default) {
                        return typeof _property === 'undefined' ? _default : _property;
                    }

                    function setDefaultCookieExpire(days) {
                        var ms = days * 24 * 60 * 60 * 1000;

                        var date = new Date();
                        date.setTime(date.getTime() + ms);

                        return "; expires=" + date.toUTCString();
                    }

                    setTimeout(attachOuiBounce, timer);
                    function attachOuiBounce() {
                        _html.addEventListener('mouseleave', handleMouseleave);
                        _html.addEventListener('mouseenter', handleMouseenter);
                        _html.addEventListener('mousemove', handleMousemove);
                        _html.addEventListener('keydown', handleKeydown);
                    }

                    function handleMouseleave(e) {
                        if (e.clientY > sensitivity || (checkCookieValue('EIPU', 'true') && !aggressive)) return;

                        _delayTimer = setTimeout(_fireAndCallback, delay);
                    }

                    function handleMousemove(e) {
                        resetTickTock();
                    }

                    function handleMouseenter(e) {
                        if (_delayTimer) {
                            clearTimeout(_delayTimer);
                            _delayTimer = null;
                        }
                    }

                    var disableKeydown = false;
                    function handleKeydown(e) {
                        if (disableKeydown || checkCookieValue('EIPU', 'true') && !aggressive) return;
                        else if (!e.metaKey || e.keyCode !== 76) return;

                        disableKeydown = true;
                        _delayTimer = setTimeout(_fireAndCallback, delay);
                    }

                    function checkCookieValue(cookieName, value) {
                        return parseCookies()[cookieName] === value;
                    }

                    function parseCookies() {
                        var cookies = document.cookie.split('; ');

                        var ret = {};
                        for (var i = cookies.length - 1; i >= 0; i--) {
                            var el = cookies[i].split('=');
                            ret[el[0]] = el[1];
                        }
                        return ret;
                    }

                    function _fireAndCallback() {
                        fire();
                        callback();
                    }

                    function fire() {
                        if ($('#eiCt'))
                        {
                            $('#eiCt').removeClass('ei--is-active');
                            $('#eiCt').removeClass('ei--is-hidden-and-out');
                            $('#eiCt').addClass('ei--is-active');
                        }
                           

                        console.log("Fired");
                        disable();
                    }

                    function disable(options) {
                        var options = options || {};

                        if (typeof options.cookieExpire !== 'undefined') {
                            cookieExpire = setDefaultCookieExpire(options.cookieExpire);
                        }

                        if (options.sitewide === true) {
                            sitewide = ';path=/';
                        }

                        if (typeof options.cookieDomain !== 'undefined') {
                            cookieDomain = ';domain=' + options.cookieDomain;
                        }

                        document.cookie = 'EIPU=true' + cookieExpire + cookieDomain + sitewide;

                        _html.removeEventListener('mouseleave', handleMouseleave);
                        _html.removeEventListener('mouseenter', handleMouseenter);
                        _html.removeEventListener('mousemove', handleMousemove);
                        _html.removeEventListener('keydown', handleKeydown);
                    }

                    return {
                        fire: fire,
                        disable: disable
                    };
                }

                ouibounce(document.getElementById('specialOffer'), { aggressive: true, callback: exitIntentEvent });

                if (typeof this["U"] != "undefined" && this["U"] != null && this["U"] != '') {
                    $('.__EI #exitIntentRedirect').click(function () {
                        console.log('redirecting to ' + this["U"]);
                        window.location = this["U"];
                    });
                }

                $('.__EI  underlay').click(function () {
                    $('.__EI .editIntentModel').hide();
                });

                $('.__EI .editIntentModel .modal-footer').click(function () {
                    $('.__EI .editIntentModel').hide();
                });

                $('.__EI #ouibounce-modal .modal').click(function (e) {
                    e.stopPropagation();
                });

                $('.__EI .closeModal').click(function () {
                    $('.__EI .specialOfferMessage').hide();
                });

                function exitIntentEvent() {
                    $('form').append('<input id="idleexitIntentPopupShown" name="idleexitIntentPopupShown" type="hidden" value="true">');
                }

                return this;
            };

            if (!window.EIPU) {
                window.EIPU = EIPU;
            }
        })();

        $(window).load(function () {
            var $ei = $('.__ei');
            var $ei__in = $ei.find('.ei__in');
            var $ei__item = $ei.find('.ei__group .ei__item');
            var $ei__radio = $ei.find('input[type="radio"]');
            var $ei__close = $ei.find('.ei__close');
            var $ei__submit = $ei.find('.ei--is-close');
            var $ei__back = $ei.find('.ei--is-back');
            var $ei__title = $ei.find('.ei__title');
            var $ei__nav = $ei.find('.ei__has-nav');
            var $ei__other = $ei.find('.ei--has-answer--other');
            var $ei__textarea = $ei.find('.ei__textarea');
            var $ei__textarea__group = $ei.find('.ei__group--textarea');
            var $ei__option__text = $ei.find('[data-ei-survey-option-term]');

            // system role : save the initial question
            $ei__title.attr('data-ei-survey-init', $ei__title.text());
            $ei__option__text.attr('data-ei-survey-option-init', $ei__option__text.text());

            var Question = function (id, answer) {
                this.Id = id;
                this.Answer = answer;
            };

            var Survey = function (visitorSessionId) {
                var self = this;
                this.VisitorSessionId = visitorSessionId;
                this.Questions = new Array();

                this.AddQuestionAnswer = function (id, answer) {
                    self.Questions[self.Questions.length] = new Question(id, answer);
                };
            };

            function createSurvey() {
                var survey = new Survey('<%= DtmContext.VisitorSessionId %>');
                survey.AddQuestionAnswer(174, $('input[name=Text174]:checked').val());
                survey.AddQuestionAnswer(181, $('#Comments').val());
                return survey;
            }

            var ei = {
                // private method : closes out the modal
                closeModal: function () {
                    $ei.removeClass('ei--is-active');

                    $ei.one('transitionend', function () {
                        $ei.addClass('ei--is-hidden-and-out');
                    });
                },

                // private method : locks/unlocks submit button based on validation status
                getValue: function ($this) {
                    var $this = $this || $(this);

                    if ($this.val() === '') {
                        $ei__submit.addClass('ei--is-inactive');
                    } else {
                        $ei__submit.removeClass('ei--is-inactive');
                    }
                },

                // private method : delivers thank you message and closes modal out
                postSubmit: function () {
                    triggerEvent('FormSubmission', { category: 'Survey', action: 'submit', label: 'Survey' });
                    $ei__title.text($ei__title.data('ei-survey-term'));
                    $ei.addClass('ei--is-post-submit');

                    $ei__nav.one('transitionend', function () {
                        setTimeout(ei.closeModal, 2000);
                    });
                },

                // private method : pre-validates before sending to system
                handleSurveySubmit: function (submitButton) {
                    if ($('input[name=Text174]').is(':checked')) {
                        document.cookie = "exitPop=true";
                        $.post('/Shared/Services/SurveyService.ashx', { survey: JSON.stringify(createSurvey()) }, ei.postSubmit);
                        //ei.postSubmit();
                    } else {
                        $ei__title.text('Please choose a response');
                    }
                }
            };

            // temp role : launch exit intent
            //setTimeout(function () {
            //    $ei.addClass('ei--is-active');
            //}, 1000);

            // user role : when user decides on an answer
            $ei__radio.on('change', function () {
                var $item = $(this).closest('.ei__item');

                $ei.find('.ei--is-selected').removeClass('ei--is-selected');
                $item.addClass('ei--is-selected');
                $ei.addClass('ei--is-selected');

                if ($item.hasClass('ei--has-answer--other')) {
                    ei.getValue($ei__textarea);
                }

                $ei__item.one('transitionend', function () {
                    $ei__item.not('.ei--is-selected').addClass('ei--is-hidden-and-out');
                    $ei__item.filter('.ei--is-selected').addClass('ei--is-expanded');
                    $ei__title.text($ei__title.data('ei-survey-pre'));
                    $ei__option__text.text($ei__option__text.data('ei-survey-option-term'));
                });
            });

            // user role : when user wants to close the modal
            $ei__close.on('click', ei.closeModal);

            // user role : when user submits the survey
            $ei__submit.on('click', function () {
                ei.handleSurveySubmit(this);
            });

            // user role : when user wants to change their answer 
            $ei__back.on('click', function () {
                $ei.find('.ei--is-expanded').removeClass('ei--is-expanded');
                $ei
                    .removeClass('ei--is-selected')
                    .find('.ei--is-selected').removeClass('ei--is-selected');
                $ei.find('.ei--is-hidden-and-out').removeClass('ei--is-hidden-and-out');
                $ei__textarea__group.addClass('ei--is-hidden');
                $ei__submit.removeClass('ei--is-inactive');

                $ei__title.text($ei__title.data('ei-survey-init'));
                $ei__option__text.text($ei__option__text.data('ei-survey-option-init'));
            });

            // user role : when user wants to choose other
            $ei__other.on('click', function () {
                $ei__textarea__group.removeClass('ei--is-hidden');
            });

            // user role : when user begins typing in the text area
            $ei__textarea.on({
                focusin: function () {
                    $ei.addClass('ei--is-texting');
                    ei.getValue($(this));
                },
                focusout: function () {
                    $ei.removeClass('ei--is-texting');
                    ei.getValue($(this));
                },
                keyup: function () {
                    ei.getValue($(this));
                }
            });

            // user role : when user wants to close the modal 
            $ei__in.on('click', function (e) {
                if (e.currentTarget === e.target && !$ei.hasClass('ei--is-selected')) {
                    ei.closeModal();
                }
            });

           
                EIPU({
                'IT': parseInt('<%=ViewData["IdleThreshold"] ?? SettingsManager.ContextSettings["IdleExitIntent.IdleThreshold"]%>'),
                'CIOA': <%=bool.Parse(ViewData["ClearIdleOnAction"] as string ?? "True").ToString().ToLower()%>, 
                'C': '<%=ViewData["PopupContent"] ?? string.Empty%>',
                'I': '<%=ViewData["ImageUrl"] ?? string.Empty%>',
                'U': '<%=ViewData["RedirectUrl"] ?? string.Empty%>'
            });
        

        });
	</script>


		<style>
			/*	@Layout | Exit Intent
			* --------------------------------------------------------------------- */
			@font-face {
				font-family: 'Exit Intent Gotham Medium';
				src: url(/shared/webfonts/gotham/medium/Gotham-Medium.eot?) format('eot');
				src: local('☺︎'),
					url(/shared/webfonts/gotham/medium/Gotham-Medium.woff) format('woff'),
					url(/shared/webfonts/gotham/medium/Gotham-Medium.svg#Gotham-Medium) format('svg');
			}

			@font-face {
				font-family: 'Exit Intent Gotham Book';
				src: url(/shared/webfonts/gotham/book/Gotham-Book.eot?) format('eot');
				src: local('☺︎'),
					url(/shared/webfonts/gotham/book/Gotham-Book.woff) format('woff'),
					url(/shared/webfonts/gotham/book/Gotham-Book.svg#Gotham-Book) format('svg');
            }
            
			@font-face {
				font-family: 'Exit Intent Icomoon';
				src: url(/shared/webfonts/icomoon/icomoon.eot?) format('eot');
				src: local('☺︎'),
					url(/shared/webfonts/icomoon/icomoon.woff) format('woff'),
					url(/shared/webfonts/icomoon/icomoon.svg#icomoon) format('svg');
            }

            .__ei [class^="icon-"] {
                font-family: 'Exit Intent Icomoon';
                speak: none;
                font-style: normal;
                font-weight: normal;
                font-variant: normal;
                text-transform: none;
                line-height: 1.5;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
            }
            
            .__ei .icon-cross:before {
                content: "\e90d";
            }

			.__ei, .__ei * {
				box-sizing: border-box;
			}

			.__ei {
				position: fixed;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.8);
				top: 0;
				left: 0;
				z-index: 10000;
			}

			.ei__in {
				position: absolute;
				top: 0;
				left: 0;
				right: 0;
				bottom: 0;
				margin: auto;
				display: flex;
				justify-items: center;
				align-items: center;
			}

			.ei__fieldset {
				background: rgba(237, 237, 237, 0.9);
				font: normal 1.6rem/1.45 'Exit Intent Gotham Book', Helvetica, sans-serif;
				text-align: center;
				width: 95vw;
				margin: auto;
				position: relative;
			}

			@media all and ( min-width: 500px ) {
				.ei__fieldset {
					width: 50%;
					min-width: 500px;
				}
			}

			.ei__title {
				display: block;
				padding: 4rem 2rem 2rem;
				font-size: 2rem;
				font: normal 2rem/1 'Exit Intent Gotham Medium', 'Exit Intent Gotham Book', Helvetica, sans-serif;
				border-bottom: 1px solid transparent;
			}

			.ei__grid {
				display: table;
				width: 100%;
			}

			.ei__grid__item {
				display: table-cell;
				vertical-align: middle;
				width: 50%;
			}

			.ei__label {
				padding: 2rem 1rem;
				background: white;
				color: #252525;
				width: 100%;
				cursor: pointer;
			}

			.ei__label:hover {
				color: #065606;
    			background: #a8ffa8;
			}

			.ei__radio {
				width: 1px;
				opacity: 0;
			}

			.ei__textarea {
                width: 100%;
				height: auto;
				border: none;
				text-align: center;
    			background: none;
				border-bottom: 1px solid #b5b5b5;
				line-height: 1.45;
				font-size: 1.8rem;
			}

			.ei__group--textarea {
				display: block;
				margin: 0;
				width: auto;
				padding: 2rem;
			}

			.ei__group--submit {
				margin: 1rem;
			}

			.ei__submit {
				background: #252525;
				color: white;
				padding: 2rem;
				width: 100%;
				text-align: center;
				border: none;
			}

			.ei__close {
				display: inline-block;
				position: absolute;
				right: 0;
				font-size: 1.25rem;
				top: 0;
				padding: 0.75rem 1rem;
				background: rgba(90, 90, 90, 0.9);
				color: rgba(255, 255, 255, 0.7);
				line-height: 1;
				cursor: pointer;
			}

			.ei__close:hover {
				background: rgba(255, 255, 255, 0.7);
				color: rgba(90, 90, 90, 0.9);
			}


			/*	@Model | Exit Intent
			* --------------------------------------------------------------------- */
			.ei__item {
				display: block;
				margin: 0.5em;
				width: auto;
				max-height: none;
            }
            

            /*	@Model | Grid | Exit Intent
			* --------------------------------------------------------------------- */
            .ei__item .row-to-center {
                display: table;
                border-spacing: 0;
            }

            .ei__item .col {
                display: table-cell;
                vertical-align: middle;
            }

            .ei__item .no-margin {
                margin: 0;
            }


			/*	@State | Exit Intent
			* --------------------------------------------------------------------- */
			.ei__label,
			.ei__title,
			.ei__textarea,
			.ei__close,
			.ei__has-nav,
			.ei--is-post-submit .ei__has-nav {
				transition: all 250ms ease-in-out;
			}

			.ei--is-selected .ei__title {
				border-bottom-color: #b5b5b5;
			}

			.__ei .ei--is-inactive {
				pointer-events: none;
				background: #e4e2e2;
    			color: #acacac;
			}

			.ei--is-texting .ei__fieldset {
				background: rgba(86, 86, 86, 0.8);
    			color: white;
			}

			.ei--is-texting .ei--has-answer--other .ei__label {
				color: white;
			}

			.ei--is-hidden {
				display: none;
			}

			.__ei,
			.ei__item,
			.ei--is-selected .ei__item:not(.ei--is-selected),
			.ei__fieldset {
				opacity: 0;
				transition: all 150ms ease-in-out;
			}

			.ei--is-active,
			.ei--is-active .ei__fieldset,
			.ei--is-active .ei__item {
				opacity: 1;	
			}

			.ei--is-active .ei__item:nth-child(odd),
			.ei--is-active .ei__item:nth-child(even) {
				transform: translateX(0);
				transition-delay: 300ms;
			}

			.ei--is-active .ei__fieldset,
			.ei--is-active .ei__item:last-child:nth-child(odd) {
				transform: translateY(0);
			}

			.ei__fieldset {
				transform: translateY(-30%);
			}

			.ei__item:nth-child(odd),
			.ei--is-selected .ei__item:not(.ei--is-selected):nth-child(odd) {
				transform: translateX(-10%);
			}

			.ei__item:nth-child(even),
			.ei--is-selected .ei__item:not(.ei--is-selected):nth-child(even) {
				transform: translateX(10%);
			}

			.ei__item:last-child:nth-child(odd),
			.ei--is-selected .ei__item:not(.ei--is-selected):last-child:nth-child(odd) {
				transform: translateY(30%);
			}

			.ei--is-selected .ei__item:not(.ei--is-selected) {
				transition-delay: 100ms;
			}

			.ei--is-hidden-and-out {
				display: block;
				max-height: 0;
				margin: 0;
				pointer-events: none;
			}

			.ei--is-expanded {
				width: 98%;
			}

			.ei--is-expanded .ei__label {
				background: transparent;
				color: #252525;
				cursor: default;
			}

			.ei--is-selected .ei__has-nav {
				max-height: 4em;
				transition-delay: 650ms;
			}

			.ei__has-nav,
			.ei--is-post-submit .ei__has-nav {
				max-height: 0;
    			overflow: hidden;
			}

			.ei--is-selected .ei__close {
				pointer-events: none;
			}
		</style>

		<div id="eiCt" class="__ei __EI ei--is-hidden-and-out">

			<div class="ei__in">

				<fieldset class="ei__fieldset" id="ei">

					<div class="ei__close">
						<span class="icon-cross"></span>
					</div>

					<h3 class="ei__title" data-ei-survey-pre="Is this the reason you did not purchase?" data-ei-survey-term="Thank You">Quick Question! Can you tell us why you did not buy?</h3>
	
					<div class="ei__group">

						<div class="ei__item">
							<label class="ei__label row-to-center">
								<span class="col ei__radio">
									<input type="radio" name="Text174" value="It was too expensive ">
								</span>
								<span class="col">
									<span class="no-margin">It was too expensive </span>
								</span>
							</label>
						</div>
		
						<div class="ei__item">
							<label class="ei__label row-to-center">
								<span class="col ei__radio">
									<input type="radio" name="Text174" value="Didn't understand how it worked ">
								</span>
								<span class="col">
									<span class="no-margin">Didn't understand how it worked </span>
								</span>
							</label>
						</div>
		
						<div class="ei__item">
							<label class="ei__label row-to-center">
								<span class="col ei__radio">
									<input type="radio" name="Text174" value="I wasn't sure if it was easy to use">
								</span>
								<span class="col">
									<span class="no-margin">I wasn't sure if it was easy to use </span>
								</span>
							</label>
						</div>
		
						<div class="ei__item">
							<label class="ei__label row-to-center">
								<span class="col ei__radio">
									<input type="radio" name="Text174" value="I don't like the product ">
								</span>
								<span class="col">
									<span class="no-margin">I don't like the product </span>
								</span>
							</label>
						</div>

                        
					    <div class="ei__item ei--has-answer--other">
							<label class="ei__label row-to-center">
								<span class="col ei__radio">
									<input type="radio" name="Text174" value="Other">
								</span>
								<span class="col">
									<span class="no-margin" data-ei-survey-option-term="Please leave us your thoughts">Other</span>
								</span>
							</label>
						</div>

					</div>
	
                    <div class="ei__group--textarea ei--is-hidden">
                        <textarea id="Comments" name="Comments" placeholder="Type your answer here" class="ei__textarea u-vw--100"></textarea>
                    </div>
    
                    <div class="ei__has-nav">
                        <div class="ei__grid">
                            <div class="ei__grid__item">
                                <div class="ei__label ei--is-back">
                                    <span>No</span>
                                </div>
                            </div>
                            <div class="ei__grid__item">
                                <div class="ei__label ei--is-close">
                                    <span>Yes</span>
                                </div>
                            </div>
                        </div>
                    </div>

				</fieldset>

			</div>

		</div>


<% } %>