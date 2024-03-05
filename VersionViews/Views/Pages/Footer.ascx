<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<footer class="footer" data-lazy-load-progressive="1">
	<nav class="footer__nav">
        <a href="index<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Home">Home</a>
        <a href="tips<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Tips & Tricks">Tips & Tricks</a>
		<a href="index<%= DtmContext.ApplicationExtension %>#how-it-works" title="<%= CampaignName %> | How It Works">How It Works</a>
		<a href="index<%= DtmContext.ApplicationExtension %>#how-to-use" title="<%= CampaignName %> | How To Use">How To Use</a>
		<a href="index<%= DtmContext.ApplicationExtension %>#testimonials" title="<%= CampaignName %> | Testimonials">Testimonials</a>
		<a href="index<%= DtmContext.ApplicationExtension %>#ingredients" title="<%= CampaignName %> | Ingredients">Ingredients</a>
		<a href="faq<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | FAQ">FAQ</a>
		<a href="https://www.pg.com/en_US/terms_conditions/index.shtml" title="<%= CampaignName %> | Customer Service" class="has-popup">Customer Service</a>
		<a href="https://www.pg.com/privacy/english/privacy_statement.shtml" title="<%= CampaignName %> | Privacy Policy" class="has-popup">Privacy Policy</a>
		<a href="sitemap<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Sitemap">Sitemap</a>
		<a href="#offer" title="<%= CampaignName %> | Order Now">Order Now</a>
	</nav>

	<address>&copy; <%= Html.Partial("Year") %> <%= CampaignName %> All Rights Reserved.</address>
	<div class="footer__logo set-transparent" data-src-img="/images/opte-icon.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %>"></div>

</footer>

<div class="footer__nav--fixed">
    <a href="#offer" class="button button--primary button--visible" title="Try <%= CampaignName %> for a free trial today!">
        <span>Get Your</span><span>Free Trial</span>
    </a>
</div>

<style>
    /*	Footer | @Layout
    * --------------------------------------------------------------------- */
    .footer {
        background: #cbc6cd;
        text-align: center;
    }

    .footer__nav > a {
        font-size: 1.4rem;
        text-decoration: none;
    }

    .footer__nav > a:hover {
        text-decoration: underline;
    }

    .footer address {
        margin: 2rem 0;
    }

    .footer__logo,
    .footer__logo > img {
        width: 45px;
        height: 61px;
        display: block;
        margin: auto;
    }

    .footer__logo {
        opacity: 0.4;
    }

    @media all and ( min-width : 0 ) and ( max-width : 768px ) {
        .footer {
            padding: 1rem 2vw 3rem;
        }

        .footer__nav > a {
            display: block;
            padding: 1rem;
            border: dashed;
            border-width: 0 0 1px;
            text-transform: uppercase;
        }
    }

    @media all and ( min-width : 769px ) {
        .footer {
            padding: 5rem;
        }

        .footer__nav > a {
            display: inline-block;
            vertical-align: middle;
            padding: 0 0.5rem 0 0.25rem;
        }

        .footer__nav > a:not(:last-of-type) {
            border-right: 1px solid;
        }
    }

    /*	Fixed Nav | Footer | @Layout
    * --------------------------------------------------------------------- */
    .footer__nav--fixed {
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        background: black;
        padding: 1rem;
        text-align: center;
		z-index: 100;
        opacity: 1;

        -webkit-transition: opacity 100ms ease-in-out;
        -moz-transition: opacity 100ms ease-in-out;
        transition: opacity 100ms ease-in-out;
    }

    @media all and ( min-width : 993px ) {
        .footer__nav--fixed {
            display: none;
        }
	}
	
    .footer__nav--hidden {
        opacity: 0;
	}
	

    /*	Overlay | @Modal
    * --------------------------------------------------------------------- */
    .overlay--visible {
        position: relative;
    }

    .overlay--visible:before,
    .overlay--visible:after {
        display: block;
        content: '';
    }

    .overlay--visible:before {
        background: hsla(0, 0%, 0%, 0.58);
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000;
    }

    .overlay--loading:after {
        width: 20%;
        height: 20%;
        min-width: 100px;
        background: url(/images/opte-icon.svg?appV=<%= DtmContext.ApplicationVersion %>) no-repeat center center;
        position: fixed;
        top: 50%;
        left: 50%;
        z-index: 1000;
        opacity: 0;

        -webkit-filter: invert(100%) opacity(50%);
        -moz-filter: invert(100%) opacity(50%);
        filter: invert(100%) opacity(50%);

        -webkit-transform-origin: center center;
        -moz-transform-origin: center center;
        transform-origin: center center;

        -webkit-transform: translate3d(-50%, -50%, 0);
        -moz-transform: translate3d(-50%, -50%, 0);
        transform: translate3d(-50%, -50%, 0) rotateY(0deg);

        -webkit-animation: fadeOpteIcon 50ms ease-in forwards, rotateOpteIcon 750ms ease-in-out 250ms infinite;
        -moz-animation: fadeOpteIcon 50ms ease-in forwards, rotateOpteIcon 750ms ease-in-out 250ms infinite;
        animation: fadeOpteIcon 50ms ease-in forwards, rotateOpteIcon 750ms ease-in-out 250ms infinite;
    }


	@media only screen and ( min-device-width : 0 ) and ( max-device-width : 992px ) {
		.overlay--loading:after {
			-webkit-animation: fadeOpteIcon 50ms ease-in forwards;
        	-moz-animation: fadeOpteIcon 50ms ease-in forwards;
        	animation: fadeOpteIcon 50ms ease-in forwards;			
		}
	}

    @-webkit-keyframes fadeOpteIcon {
        to {
            opacity: 1;
        }
    }

    @-moz-keyframes fadeOpteIcon {
        to {
            opacity: 1;
        }
    }

    @keyframes fadeOpteIcon {
        to {
            opacity: 1;
        }
    }

    @-webkit-keyframes rotateOpteIcon {
        to {
            -webkit-transform: translate3d(-50%, -50%, 0) rotateY(360deg);
        }
    }

    @-moz-keyframes rotateOpteIcon {
        to {
            -moz-transform: translate3d(-50%, -50%, 0) rotateY(360deg);
        }
    }

    @keyframes rotateOpteIcon {
        to {
            transform: translate3d(-50%, -50%, 0) rotateY(360deg);
        }
    }
</style>

<script type="text/javascript" src="/shared/js/jquery.min.js?appV=<%= DtmContext.ApplicationVersion %>"></script>
<script>
    function registerEvent(evType, fn, element, useCapture) {
        var elm = element || window;
        if (elm.addEventListener) {
            elm.addEventListener(evType, fn, useCapture || false);
        }
        else if (elm.attachEvent) {
            var r = elm.attachEvent(evType, fn);
        }
        else {
            elm[evType] = fn;
        }
    }

    function triggerEvent(eventName, data, element) {
        try {
            var event;
            var payload = (data && typeof (data.detail) != "undefined")
                    ? data
                    : (data ? { detail: data } : { detail: '' });
            if (typeof window.CustomEvent === 'function') {
                event = new CustomEvent(eventName, payload || { detail: '' });
            } else if (document.createEvent) {
                event = document.createEvent('HTMLEvents');
                event.detail = payload.detail;
                event.initEvent(eventName, true, true);
            } else if (document.createEventObject) {
                event = document.createEventObject();
                event.detail = payload.detail;
                event.eventType = eventName;
            }
            event.eventName = eventName;
            var el = element || window;
            if (el.dispatchEvent) {
                el.dispatchEvent(event);
            } else if (el.fireEvent && htmlEvents[eventName]) {
                el.fireEvent(event.eventType, event);
            } else if (el[eventName]) {
                el[eventName]();
            } else if (el['on' + eventName]) {
                el['on' + eventName]();
            }
        } catch (error) {
            console.log('Error executing ' + name + ' Event');
        }
    }
</script>

<%= Model.FrameworkVersion %>
<% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
<% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
<% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>



<script>
    var appStart = false;

    function setApp () {
        if ( !appStart ) {
            appStart = true;
            var body = document.getElementsByTagName('body')[0];
			//var jquery = document.createElement('script');
			var app = document.createElement('script');

			//jquery.setAttribute('type', 'text/javascript');
			//jquery.setAttribute('src', '/shared/js/jquery.min.js?appV=<%= DtmContext.ApplicationVersion %>');

			app.setAttribute('type', 'text/javascript');
			app.setAttribute('src', '/js/app.js?appV=<%= DtmContext.ApplicationVersion %>');

			body.appendChild(app);
			//jquery.onload = function () {
				//body.appendChild(app);
			//};
			console.log('app start');
		}
    }

    if ( window.location.hash ) {
        setApp();
    } else {
        document.addEventListener('mousemove', setApp);
        document.addEventListener('scroll', setApp);
    }
    
</script>