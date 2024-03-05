<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<header class="header">

    <div class="header__in">

        <%-- // @HEADER --%>
        <%= Html.Partial("Header") %>

        <div class="hero__section">
            <div class="hero__title"><% Html.RenderSnippet("SUBPAGE-TITLE-" + DtmContext.PageCode); %></div>
        </div>
        
    </div>

</header>


<style>
    .section--sub ul {
        margin-left: 2rem;
    }
</style>

<%-- // @MAIN --%>
<main class="main">

    <!-- // FAQ | Section -->
    <section class="section section--sub section--line--bottom" data-lazy-load-progressive="0.25">
    
        <div class="section__in">
            <% Html.RenderSubPageContent(DtmContext.PageCode); %>
        </div>

    </section>

    <%= Html.Partial("GetOffer") %>

</main>


<%-- // @FOOTER --%>
<%= Html.Partial("Footer") %>
<%= Html.Partial("GetDeferStyles") %>

<style>
    <%= Html.Partial("GetStyleModel_MBG") %>
    <%= Html.Partial("GetStyleModel_Button") %>
</style>

</asp:Content>

