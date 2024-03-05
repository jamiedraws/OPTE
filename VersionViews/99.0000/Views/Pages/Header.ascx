<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<% if ( DtmContext.Page.IsStartPageType ) { %>
<div id="nav" class="ham header__has-nav">

    <input type="checkbox" id="header__nav" class="ham__input header__nav__checkbox">

    <div class="header__controls ham__container">
        <a href="index<%= DtmContext.ApplicationExtension %>" title="Return back to the <%= CampaignName %> home page">
            <img class="header__logo" src="/images/opte-logo.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %>">
        </a>
        <label for="header__nav" class="ham__button">
            <span></span><span></span><span></span>
        </label>
    </div>
    <nav class="header__nav">
        <a href="index<%= DtmContext.ApplicationExtension %>#how-it-works" title="See how <%= CampaignName %> works">How It Works</a>
        <a href="index<%= DtmContext.ApplicationExtension %>#how-to-use" title="Learn how to use <%= CampaignName %>">How To Use</a>
        <a href="index<%= DtmContext.ApplicationExtension %>#testimonials" title="Read what our valued customers say about <%= CampaignName %>">Testimonials</a>
        <a href="index<%= DtmContext.ApplicationExtension %>" class="ham__hide-link" title="Return back to the <%= CampaignName %> home page">
            <div class="header__icon">
                <%= Html.Partial("GetIcon") %>
            </div>
        </a>
        <a href="index<%= DtmContext.ApplicationExtension %>#ingredients" title="Look up our ingredients for <%= CampaignName %>">Ingredients</a>
        <a href="faq<%= DtmContext.ApplicationExtension %>" title="Have a question? We may have an answer in our <%= CampaignName %> frequently asked questions">FAQ</a>
        <a href="#offer" title="Interested? Sign up for a 30-Day Free Trial with <%= CampaignName %> today!"><em>30-Day Free Trial</em></a>
    </nav>

</div>
<script>
    // private method : add sticky nav
    function addStickyNav () {
        var $nav = document.getElementById('nav');

        document.addEventListener('scroll', function () {
            if ( window.scrollY > 0 ) {
                $nav.classList.add('header__nav--fixed');
            } else {
                $nav.classList.remove('header__nav--fixed');
            }
        });
    }
    addStickyNav();
</script>
<% } else { %>
    <style>
        #dtm .header__logo {
            max-width: 11rem;
            margin: 2rem auto 0;
        }

        .dtm__in--mv {
            background: none;
        }

        #dtm #content_top {
            box-shadow: none;
            border: none;
        }

        #dtm .dtm__in--dv #content_top {
            max-width: 1000px;
            margin: auto;
        }
    </style>
    <img class="header__logo" src="/images/opte-logo.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> logo">
<% } %>