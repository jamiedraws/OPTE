<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<div class="ing__figure">
    <figure>
        <div class="ing__img" data-src-img="/images/spot-lightening.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> spot lightening"></div>
        <em>Spot Lightening</em>
        <p>Pixel-White is scientifically proven to reduce the appearance of age spots over time.</p>
    </figure>
    <figure>
        <div class="ing__img" data-src-img="/images/skin-protection.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> skin protection"></div>
        <em>Skin Improvement</em>
        <p>Skin actives reduce the appearance of age spots. Pairs well with your favorite SPF product, that helps prevent damage from sun's harmful rays.</p>
    </figure>
    <figure>
        <div class="ing__img" data-src-img="/images/moisturizers.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> moisturizers"></div>
        <em>Moisturizers</em>
        <p>Organic compounds help your skin retain moisture, keeping it hydrated.</p>
    </figure>
    <figure>
        <div class="ing__img" data-src-img="/images/mineral-pigments.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> mineral pigments"></div>
        <em>Mineral Pigments</em>
        <p>A patented blend of mineral pigments provide immediate coverage, creating a flawless look.</p>
    </figure>
</div>