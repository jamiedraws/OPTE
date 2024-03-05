<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%
    var rating = (int?)ViewData["rating"] ?? 5;
    var total = (int?)ViewData["total"] ?? 5;
%>

<div class="star">
    <ul class="star__list">
        <% for ( var i = 0; i < total; i++ ) { %>
            <li class="star__item">
                <% if ( i < rating ) { %>
                    <div class="star__icon" data-src-img="/images/star-on.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="star on"></div>
                <% } else { %>
                    <div class="star__icon" data-src-img="/images/star-off.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="star off"></div>
                <% } %>
            </li>
        <% } %>
    </ul>
</div>