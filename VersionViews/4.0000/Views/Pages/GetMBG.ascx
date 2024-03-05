<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% 
    var asyncImage = ViewData["asyncImage"] != null ? (Boolean)ViewData["asyncImage"] : false;
    var CampaignName = SettingsManager.ContextSettings["Label.ProductName"];
%>

<div class="offer__mbg mbg">
    <div class="mbg__img">
        <% if ( asyncImage ) { %>
            <div data-src-img="/images/4.0000/30-rfto.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="30 day risk free offer"></div>
        <% } else { %>
            <img src="/images/4.0000/30-rfto.png?appV=<%= DtmContext.ApplicationVersion %>" alt="30 day risk free offer">
        <% } %>
    </div>
    <div class="mbg__content">
        <em class="mbg__title">We're Sure You'll Love It.</em>
        <p>Buy <%= CampaignName %> risk-free today! Only pay $84 month for 24 months. If you are not satisfied within 30 days, contact our customer service line for a prepaid label. Then, just send the system back.</p>
    </div>
</div>