<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% 
    var asyncImage = ViewData["asyncImage"] != null ? (Boolean)ViewData["asyncImage"] : false;
    var CampaignName = SettingsManager.ContextSettings["Label.ProductName"];
%>

<div class="offer__mbg mbg">
    <div class="mbg__img">
        <% if ( asyncImage ) { %>
            <div data-src-img="/images/2.0000/30-rfto.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="30 day risk free trial offer"></div>
        <% } else { %>
            <img src="/images/2.0000/30-rfto.png?appV=<%= DtmContext.ApplicationVersion %>" alt="30 day risk free trial offer">
        <% } %>
    </div>
    <div class="mbg__content">
        <em class="mbg__title">We're Sure You'll Love It.</em>
        <p>Try <%= CampaignName %> risk-free today! We won't charge you for 30 days, only pay $1 for shipping. If you are not satisfied, contact our customer service line for a prepaid label. Then, just send the system back and you won't get charged anything.</p>
    </div>
</div>