﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
 
<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>
 
<footer class="footer" data-lazy-load-progressive="1">
 
    <% if ( DtmContext.Page.IsStartPageType ) { %>
	<nav class="footer__nav">
        <a href="index<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Home">Home</a>
        <a href="tips<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Tips & Tricks">Tips & Tricks</a>
        <a href="index<%= DtmContext.ApplicationExtension %>#how-it-works" title="<%= CampaignName %> | How It Works">How It Works</a>
        <a href="index<%= DtmContext.ApplicationExtension %>#how-to-use" title="<%= CampaignName %> | How To Use">How To Use</a>
        <a href="index<%= DtmContext.ApplicationExtension %>#testimonials" title="<%= CampaignName %> | Testimonials">Testimonials</a>
		<a href="index<%= DtmContext.ApplicationExtension %>#ingredients" title="<%= CampaignName %> | Ingredients">Ingredients</a>
		<a href="faq<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | FAQ">FAQ</a>
		<a href="https://www.pg.com/en_US/terms_conditions/index.shtml" title="<%= CampaignName %> | Customer Service" class="has-popup">Customer Service</a>
    </nav>
    <nav class="footer__nav">
        <a href="https://www.pg.com/privacy/english/privacy_statement.shtml" title="<%= CampaignName %> | Privacy" class="has-popup">Privacy</a>
        <a href="store-policy<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Store Policy">Store Policy</a>
        <a href="https://www.pg.com/en_US/terms_conditions/index.shtml" title="<%= CampaignName %> | Terms and Conditions" class="has-popup">Terms and Conditions</a>
        <a href="sitemap<%= DtmContext.ApplicationExtension %>" title="<%= CampaignName %> | Sitemap">Sitemap</a>
        <a href="#offer" title="<%= CampaignName %> | Order Now">Order Now</a>
    </nav>
    <% } %>
 
	<address>&copy; <%= Html.Partial("Year") %> Procter &amp; Gamble</address>
	<div class="footer__logo set-transparent" data-src-img="/images/opte-icon.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %>"></div>
    <a href="https://www.bbb.org/cincinnati/business-reviews/detergent/the-procter-gamble-company-in-cincinnati-oh-3036" target="_blank" title="Review <%= CampaignName %> on BBB" class="footer__bbb set-transparent" data-src-img="/images/BBB.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="BBB Accredited Business"></a>
    <a href="mailto:info@opteskin.com" title="Reach out to <%= CampaignName %> by email">info@opteskin.com</a>
 
</footer>
 
<% if ( DtmContext.Page.IsStartPageType ) { %>
<div class="footer__nav--fixed">
    <a href="#offer" class="button button--primary button--visible" title="Try <%= CampaignName %> for a free trial today!">
        <span>Get Your</span><span>Free Trial</span>
    </a>
</div>
<% } %>
 
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
 
    .footer__nav > a:hover,
    .footer__nav > a:focus {
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
 
    .footer__bbb {
        display: block;
        text-align: center;
        margin: 3rem auto 1rem;
        width: 115px;
        height: 44px;
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
 
<% if ( DtmContext.Page.IsStartPageType ) { %>
<%= Html.Partial("Scripts") %>
<% } %>
<%= Model.FrameworkVersion %>
 
<div class="l-controls bottom-absolute">
    <% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
    <% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
    <% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>
</div>
 
<script>
    var appStart = false;
    var $vse = $('.vse');

    function setApp() {
        if (!appStart) {
            appStart = true;
            var body = document.getElementsByTagName('body')[0];
            var app = document.createElement('script');

            app.setAttribute('type', 'text/javascript');
            app.setAttribute('src', '/js/app.js?appV=<%= DtmContext.ApplicationVersion %>');

            body.appendChild(app);
            console.log('app start');
        }
    }

    if (window.location.hash) {
        setApp();
    } else {
        document.addEventListener('mousemove', setApp);
        document.addEventListener('scroll', setApp);
    }

    // enable form options to jump to the review table when selected, except the ones that are out of stock
    $(window).on('app:ready', function (get) {
        // assign app to the global scope
        window[app] = get.app;

        get.app.updateFixedNavTargetOffset($('input[name="Options"][data-instock!="false"]'), '#reviewOrder');

        _dtm.callbackAlert = function () {
            get.app.updateFixedNavTargetOffset(null, '#form', true);
        };

        console.log('app ready');

        get.app.$html.on('dtm/fwjs', initFWJS);
    });

    function initFWJS () {
        console.log('init fwjs');
        _dtm.expressCheckout({
            submit : $('#stripeSubmit'),
            addPayPalButton : false
        });
    }

    registerEvent('_dtmExpressCheckoutPaymentClick', function (get) {
        app.updateFixedNavTargetOffset(null, '#paymentForm', true);
    });

    function onFormPostValidation(event) {
        var errors = [];

        $('input[type=text]').each(function (index, element) {
            var inputValue = $(this).val();
            var formattedValue = inputValue.replace(/[^A-Za-z0-9 _]/g, '');
            $(this).val(formattedValue);
        });

        return errors;
    }

    $(document).ready(function () {
        $("#stripeSubmit").hide();
        $("#ordertxt").hide();
        $('#ShippingIsDifferentThanBilling').on('click', toggleShipping);
        $('[name="paymentType"]').bind("change", showPayment);
        $("#paypalBt").bind("click", checkout);
        $('#AcceptOfferButton').on('click', validateForm);
        toggleShipping();
        <% if (DtmContext.Page.IsStartPageType)
    {%>
        OnVSCookieLoaded();
   <% } %>
        
    });

    function showPayment() {
        var payType = $(this).val();
        if (payType == "paypal") {
            $("#stripeSubmit").hide();
            $("#ordertxt").hide();
            $("#orderInfo").hide();
            $("#CardNumberCt").hide();
            $("#CardExpirationCt").hide();
            $("#CardCvv2Ct").hide();
            $("#paypalBt").show();

        } else {
            $("#paypalBt").hide();
            $("#stripeSubmit").show();
            $("#ordertxt").show();
            $("#orderInfo").show();
            $("#billingInformation").show();
            $("#ShippingIsSame").show();
            $("#CardNumberCt").show();
            $("#CardExpirationCt").show();
            $("#CardCvv2Ct").show();

        }
        toggleShipping();
    }

    function checkout() {
        var code = $("#ActionCode0").val();

        if (code == "OPTEFAIR" || code == "OPTEMEDIUM") {
            $.facebox("<h1>" + (typeof __processingMessage == "undefined" ? "Processing..." : __processingMessage) + "<\/h1>");
            var plans = {
                OPTEFAIR: "LDEFYUGTHY77W",
                OPTEMEDIUM: "MGYJNDPGV35PC"
            };
            $.post('/', {
                ActionCode0: $("#ActionCode0").val(),
                acceptOffer: 'acceptOffer',
                OrderType: 'None',
                RemoteType: "ProductLead",
                PaymentType: "PayPal"
            }, function (data) {
                console.log("redirecting to paypal...");
                window.location.href = 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=' + plans[code];
            });
        } else {
            _dtm.alert("The following errors have occured:\nPlease select a product!", $vse, function (response, $errorContainer) {
                app.updateFixedNavTargetOffset(null, '#form', true);
            });
        }

    }
    </script>