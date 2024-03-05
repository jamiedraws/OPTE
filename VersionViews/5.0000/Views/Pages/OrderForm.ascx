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

        <style>
            @media all and ( max-width : 992px ) {
                .product--l .c-brand--form__grid__group {
                    margin: 0;
                }

                .product--l .c-brand--form__grid {
                    justify-content: flex-start;
                }
            }
        </style>

        <div class="u-pad product product--l">

            <label class="c-brand--form__grid">
                    <div class="row-to-center c-brand--form__grid__group ">
                        <span class="col">
                            <input class="product__item" type="radio" data-eflex="draw"  id="RADIO1PAYOPTION" name="RADIO1PAYOPTION" value="one" >
                        </span>
                        <span class="col u-pad--left">
                            <span class="no-margin"> 1 payment of $499</span>
                        </span>
                    </div>
            </label>

            <label class="c-brand--form__grid">
                    <div class="row-to-center c-brand--form__grid__group">
                        <span class="col">
                            <input class="product__item" type="radio" data-eflex="draw" id="RADIOPAYOPTION" name="RADIO1PAYOPTION" value="four">
                        </span>
                        <span class="col u-pad--left">
                            <span class="no-margin"> 4 monthly payments of $125</span>
                        </span>
                    </div>
            </label>

        </div>

    </fieldset>

    <fieldset class="steps c-brand--form__fieldset">
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
                            <input type="radio" disabled data-eflex="draw" name="Options" id="OPTEFAIR5" value="OPTEFAIR5"  data-code-one="OPTEFAIR1PAY" data-code-four="OPTEFAIR5"  data-code-group="RADIO1PAYOPTION" data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote product__item" >
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
                            <input type="radio" data-eflex="draw" disabled data-instock="false" name="Options" id="OPTEMEDIUM" value="OPTEMEDIUM" data-code-one="OPTEMEDIUM" data-code-four="OPTEMEDIUM" data-code-group="RADIO1PAYOPTION"  data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote product__item" title="<%= CampaignName %> Medium">
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
                            <input type="radio" data-eflex="draw" disabled data-instock="false" id="OPTEDEEP" value="OPTEDEEP" data-code-one="OPTEDEEP" data-code-four="OPTEDEEP"  data-code-group="RADIO1PAYOPTION" name="Options" data-href="#leadform" data-remote-name="LeadForm" class="button button--primary button--visible get-modal get-modal--remote product__item" title="<%= CampaignName %> Deep Tone">
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
