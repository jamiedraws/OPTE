<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<% var asyncImage = ViewData["asyncImage"] != null ? (Boolean)ViewData["asyncImage"] : false; %>

<div class="offer__mbg mbg">
    <div class="mbg__img">
        <% if ( asyncImage ) { %>
            <div data-src-img="/images/30-mbg.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="30 day money back guarantee"></div>
        <% } else { %>
            <img src="/images/30-mbg.png?appV=<%= DtmContext.ApplicationVersion %>" alt="30 day money back guarantee">
        <% } %>
    </div>
    <div class="mbg__content">
        <em class="mbg__title">We're Sure You'll Love It.</em>
        <p>If you're not completely satisfied with your purchase, return it within 30 days for a full refund. No-hassle guarantee.</p>
    </div>
</div>