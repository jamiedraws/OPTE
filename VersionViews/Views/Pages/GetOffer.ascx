<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<!-- // Trial Offer | Section -->
<section class="section section--offer section--line--bottom" data-lazy-load-progressive="0.25">

    <div class="section__in">

        <div class="offer__grid trial">
            <div class="offer__content trial__content">
                <h2 class="offer__title">30-Day Free Trial</h2>
                <div class="offer__product" data-src-img="/images/slider/main-offer/main-offer-slide-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> trial product includes beauty wand, cradle and cartridge"></div>
                <%= Html.Partial("GetMBG", null, new ViewDataDictionary {{ "asyncImage", true }}) %>
            </div>
        </div>

        <div id="offer" data-sticky-footer="hide" class="offer__desc">
            <em class="desc__title">Offer Details:</em>
            <p>We won't charge you for the first 30 days, so you can try <%= CampaignName %> for Free! If within that period you decide <%= CampaignName %> is not for you, please notify our customer service line. We'll provide a prepaid UPS return label for a free return, and you won't get charged anything. If you keep the <%= CampaignName %> device, we will charge your credit card $90 per month for the next 24 months. You will receive 60-day refills shipped every other month for free for 2 years. After 24 months, the device is yours and 60-day refills will be available for $135 every two months or about $2/day.</p>
        </div>

        <button data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote" title="Order <%= CampaignName %> Today">Buy Now</button>

    </div>

</section>