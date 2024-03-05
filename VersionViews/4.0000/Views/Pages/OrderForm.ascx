<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<div id="form" class="c-brand--form">

    <% using (Html.BeginForm())
        { %>
    <%= Html.Partial("ViewSwitchLink") %>
    <div class="vse" data-vse-scroll><%= Html.ValidationSummary("The following errors have occurred:") %></div>
    <div class="hide" data-vse></div>
    <!-- // BEGIN #productSelection -->
    <fieldset class="steps c-brand--form__fieldset" id="productSelection">

        <div class="c-brand--form__legend width-at-100" tabindex="0">
            <h3 class="c-brand--form__headline">
                <b class="uppercase">STEP 1:</b>
                Customize Your Tone
            </h3>
        </div>

        <div class="u-pad product">

            <label class="c-brand--form__grid">
                <div class="c-brand--form__grid__item">
                    <div class="row-to-center c-brand--form__grid__group fn--ucase">
                        <span class="col">
                            <input type="radio" data-eflex="draw" name="Options" id="OPTEFAIR4" value="OPTEFAIR4" data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote product__item"  >
                        </span>
                        <span class="col u-pad--left">
                            <span class="no-margin">Fair</span>
                        </span>
                    </div>
                </div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/fair-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Fair"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/fair-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Fair"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/fair-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Fair"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/fair-4.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Fair"></div>
            </label>

            <label class="c-brand--form__grid">
                <div class="c-brand--form__grid__item">
                    <div class="row-to-center c-brand--form__grid__group fn--ucase">
                        <span class="col">
                            <input type="radio" data-eflex="draw" data-instock="false" name="Options" id="OPTEMEDIUM4" value="OPTEMEDIUM4"  data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote product__item" title="<%= CampaignName %> Medium">
                        </span>
                        <span class="col u-pad--left">
                            <span class="no-margin">Medium</span>
                        </span>
                    </div>
                </div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/medium-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Medium"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/medium-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Medium"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/medium-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Medium"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/medium-4.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Medium"></div>
            </label>

            <label class="c-brand--form__grid">
                <div class="c-brand--form__grid__item">
                    <div class="row-to-center c-brand--form__grid__group fn--ucase">
                        <span class="col">
                            <input type="radio" data-eflex="draw" data-instock="false" id="OPTEDEEP4" value="OPTEDEEP4" name="Options" data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote product__item" title="<%= CampaignName %> Deep Tone">
                        </span>
                        <span class="col u-pad--left">
                            <span class="no-margin">Deep</span>
                        </span>
                    </div>
                </div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/deep-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Deep"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/deep-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Deep"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/deep-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Deep"></div>
                <div class="c-brand--form__grid__img" data-src-img="/images/2.0000/deep-4.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Deep"></div>
            </label>
        </div>
    </fieldset>
    <!-- // END #productSelection -->
    <% } %>
</div>

<style>
    .dtm__in .checkout-option .label {
        text-align: left;
    }

    .c-brand--form .checkout-option {
        margin-bottom: 0;
    }

    .dtm .dtm__in .is-PayPal,
    .dtm .dtm__in .is-SSL {
        max-width: none;
        width: auto;
        height: auto;
    }

    #divPayPal img {
        max-width: 110px;
    }
</style>
