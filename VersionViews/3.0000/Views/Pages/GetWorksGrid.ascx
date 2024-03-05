<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<div class="works__figure">
    <figure>
        <div data-src-img="/images/target-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> scans"></div>
        <figcaption class="works__figcaption">
            <em>Scans</em>
            <p>The wand uses a safe, blue, LED light to find even the most subtle age spots.</p>
        </figcaption>
    </figure>
    <figure>
        <div data-src-img="/images/target-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> detects"></div>
        <figcaption class="works__figcaption">
            <em>Detects</em>
            <p>A microprocessor analyzes your age spots and customizes the serum application instantly.</p>
        </figcaption>
    </figure>
    <figure>
        <div data-src-img="/images/target-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> micro-perfects"></div>
        <figcaption class="works__figcaption">
            <em>Micro-Perfects</em>
            <p>The serum is applied precisely to each micro-imperfection, providing immediate coverage and long term benefits.</p>
        </figcaption>
    </figure>
</div>