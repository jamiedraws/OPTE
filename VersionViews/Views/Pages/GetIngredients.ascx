<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<div class="ing__figure">
    <figure>
        <div class="ing__img" data-src-img="/images/spot-lightening.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> spot lightening"></div>
        <em>Spot Lightening</em>
        <p>Pixel-White is scientifically proven to reduce the appearance of age spots over time.</p>
        <p>Our Pixel-White complex contains organic Sepi-White, proven to reduce age spots over time.</p>
    </figure>
    <figure>
        <div class="ing__img" data-src-img="/images/skin-protection.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> skin protection"></div>
        <em>Skin Protection</em>
        <p>Minerals prevent age spots from increasing when used as directed and with sun protection measures.</p>
        <p>Titanium dioxide (TiO<sub>2</sub>) which is a natural mineral provides a physical barrier from the sun.</p>
    </figure>
    <figure>
        <div class="ing__img" data-src-img="/images/moisturizers.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> moisturizers"></div>
        <em>Moisturizers</em>
        <p>Organic compounds help your skin retain moisture, keeping it hydrated.</p>
        <p>We use organic ingredients to moisturize your skin.</p>
    </figure>
    <figure>
        <div class="ing__img" data-src-img="/images/mineral-pigments.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> mineral pigments"></div>
        <em>Mineral Pigments</em>
        <p>A patented blend of mineral pigments provide immediate coverage, creating a flawless look.</p>
        <p>Our formula contains titanium dioxide (TiO<sub>2</sub>) which is a natural mineral typically found in makeup.</p>
    </figure>
</div>