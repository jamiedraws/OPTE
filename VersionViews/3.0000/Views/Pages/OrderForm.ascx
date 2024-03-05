<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<div id="form" class="c-brand--form">

    <% using (Html.BeginForm()) { %>




        <%= Html.Partial("ViewSwitchLink") %>
        <div class="vse" data-vse-scroll><%= Html.ValidationSummary("The following errors have occurred:") %></div>
        <div class="hide" data-vse></div>




		<%-- Html.RenderSnippet("PRODUCTSELECTION"); --%>
        <!-- // BEGIN #productSelection -->
        <fieldset class="steps c-brand--form__fieldset" id="productSelection">

            <div class="c-brand--form__legend width-at-100" tabindex="0">
                <h3 class="c-brand--form__headline">
                    <b class="uppercase">STEP 1:</b>
                    Customize Your Tone
                </h3>
            </div>
        
            <div class="u-pad">
        
                <label class="c-brand--form__grid">
                    <div class="c-brand--form__grid__item">
                        <div class="row-to-center c-brand--form__grid__group fn--ucase">
                            <span class="col">
                                 <input type="radio" data-eflex="draw" name="Options" data-code="OPTEFAIR">
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
                                <input type="radio" data-eflex="draw" name="Options" data-code="OPTEMEDIUM">
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
            </div>
        
        </fieldset>
        <!-- // END #productSelection -->



        <%= Html.Partial("OrderFormReviewTable", Model) %>



        <%-- // Indicate Requires Field --%>
        <p data-required class="u-mar--bottom fn--center"><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %></p>



        <div class="row">



            <!-- // Column -->
            <div class="col @sm-u-vw--50 @sm-u-pad--bottom u-pad--right">

                <%-- // BEGIN #paymentForm --%>
                <fieldset id="paymentForm" class="c-brand--form__fieldset">
                     <%-- // @PAYMENT HEADLINE --%>
                    <div class="c-brand--form__legend u-vw--100" tabindex="0">
                        <h3 class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["PaymentStep"] %></b> <%= LabelsManager.Labels["PaymentHeadline"] %>
        				</h3>
                    </div>
                        
                    <div class="checkout-option" id="divPayPal" style="display: block;">
                        <input type="radio" name="paymentType" id="paypal" value="paypal"/>
                        <label class="label" for="paypal">
                            <img class="dtm__restyle" src="/shared/images/payment/paypal.svg?appV=<%= DtmContext.ApplicationVersion %>" width="110">
                        </label>
                    </div>
                    <br />
                    <div class="checkout-option" id="divCARD">
                        <input type="radio" name="paymentType" id="card" value="card" />
                        <label class="label ccImage " for="card">
                            <img id="visaImg" src="/shared/images/payment/visa.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="visa accepted." width="37">
                            <img id="mastercardImg" src="/shared/images/payment/mastercard.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="mastercard accepted." width="37">
                            <img id="amexImg" src="/shared/images/payment/amex.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="amex accepted." width="37">
                            <img id="discoverImg" src="/shared/images/payment/discover.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="discover accepted." width="37">
                        </label>
                    </div>

                    <ul class="c-brand--form__list u-pad">
                        
                        <%-- // @PAYMENT TYPE --%>
                        <li id="CardTypeCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label for="CardType" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right">Type</label>
                            <%= Html.DropDownList("CardType", new[]
                                    {
                                      new SelectListItem { Text = "Visa", Value = "V"},
                                      new SelectListItem { Text = "Mastercard", Value = "M"},
                                      new SelectListItem { Text = "Discover", Value = "D"},
                                      new SelectListItem { Text = "American Express", Value= "AX"}
        						  }, new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" })
                            %>
                        </li>

                        <%-- // @PAYMENT NUMBER --%>
                        <li id="CardNumberCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="CardNumberLabel" for="CardNumber" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["CardNumber"] %></label>
                            <input id="CardNumber" name="CardNumber" type="tel" value="<%= ViewData["CardNumber"] %>" placeholder="<%= LabelsManager.Labels["CardNumberPlaceholder"] %>" aria-labelledby="CardNumberLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @PAYMENT EXP. DATE --%>
                        <li id="CardExpirationCt" class="o-grid--vert--center u-vw--100 c-brand--form__item">
                            <label for="CardExpirationMonth" data-required class="@sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right c-brand--form__label"><%= LabelsManager.Labels["ExpirationDate"] %></label>
                            <div class="c-brand--form__field o-grid @sm-u-vw--100 u-bs--reset">
                                <div class="o-grid__col u-vw--50 u-pad--right">
                                    <%= Html.CardExpirationMonth("CardExpirationMonth", new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" }) %>
                                </div>
                                <div class="o-grid__col u-vw--50 u-pad--left">
                                    <%= Html.NumericDropDown("CardExpirationYear", DateTime.Now.Year, DateTime.Now.Year + 10, ViewData["CardExpirationYear"], new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" }) %>
                                </div>
                            </div>
                        </li>

                        <%-- // @PAYMENT CVV2 --%>
                        <li id="CardCvv2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="CardCvv2Label" for="CardCvv2" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["CVV2"] %></label>
                            <div class="c-brand--form__field o-grid @sm-u-vw--100 u-bs--reset">
                                <div class="o-grid__col u-vw--50 u-bs--reset u-pad--right">
                                    <input id="CardCvv2" name="CardCvv2" type="tel" value="<%= ViewData["CardCvv2"] %>" maxlength="5" placeholder="<%= LabelsManager.Labels["CVV2Placeholder"] %>" aria-labelledby="CardCvv2Label" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @sm-u-vw--100 fx--animate">
                                </div>
                                <div class="o-grid__col u-vw--50 u-bs--reset u-pad--left">
                                    <a href="<%= LabelsManager.Labels["CVV2DisclaimerLink"] %>" title="<%= LabelsManager.Labels["CVV2DisclaimerLinkTitle"] %>" id="cvv2" class="c-brand--form__hint o-grid__col @sm-u-vw--100 u-pad u-push--left has-fancybox fancybox.ajax"><%= LabelsManager.Labels["CVV2Disclaimer"] %></a>
                                </div>
                            </div>
                        </li>

                    </ul>
                   

                </fieldset>
                <%-- // END #paymentForm --%>

            </div>
            <!-- // Column -->
            <div class="col @sm-u-vw--50 @sm-u-pad--top u-pad--left">
                  <div style="display:none;" id="orderInfo">

                       <%-- // BEGIN #billingInformation --%>
                <fieldset id="billingInformation" class="c-brand--form__fieldset">

                    <%-- // @BILLING HEADLINE --%>
                    <div class="c-brand--form__legend u-vw--100" tabindex="0">
                        <h3 class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["BillingStep"] %></b> <%= LabelsManager.Labels["BillingHeadline"] %>
        				</h3>
                    </div>

                    <ul class="c-brand--form__list u-pad">

                        <%-- // @BILLING FULL NAME --%>
                        <li id="BillingFullNameCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingFullNameLabel" for="BillingFullName" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["FullName"] %></label>
                            <input id="BillingFullName" maxlength="50" name="BillingFullName" type="text" value="<%= ViewData["BillingFullName"] %>" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="BillingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @BILLING STREET --%>
                        <li id="BillingStreetCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingStreetLabel" for="BillingStreet" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Address"] %></label>
                            <div class=" @sm-u-bs--reset fld">
                                <input id="BillingStreet" name="BillingStreet" type="text" value="<%= ViewData["BillingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["AddressPlaceholder"] %>" aria-labelledby="BillingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                            </div>
                        </li>

                        <%-- // @BILLING STREET 2 --%>
                        <li id="BillingStreet2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingStreet2Label" for="BillingStreet2" class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Address2"] %></label>
                            <input id="BillingStreet2" name="BillingStreet2" type="text" value="<%= ViewData["BillingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Address2Placeholder"] %>" aria-labelledby="BillingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @BILLING CITY --%>
                        <li id="BillingCityCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingCityLabel" for="BillingCity" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["City"] %></label>
                            <input id="BillingCity" name="BillingCity" type="text" value="<%= ViewData["BillingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="BillingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @BILLING COUNTRY --%>
                        <li id="BillingCountryCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingCountryLabel" for="BillingCountry" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Country"] %></label>
                            <%= Html.DropDownListFor(m => m.BillingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), LabelsManager.Labels["CountryPlaceholder"], new { @class = "c-brand--form__select o-box o-shadow @sm-u-vw--100 fx--animate" }) %>
                        </li>

                        <%-- // @BILLING STATE --%>
                        <li id="BillingStateCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingStateLabel" for="BillingState" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["State"] %></label>
                            <%= Html.DropDownListFor(m => m.BillingState, new SelectList(Model.States, "StateCode", "StateName"), LabelsManager.Labels["StatePlaceholder"], new { @class = "c-brand--form__select o-box o-shadow @sm-u-vw--100 fx--animate" }) %>
                        </li>

                        <%-- // @BILLING ZIP --%>
                        <li id="BillingZipCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="BillingZipLabel" for="BillingZip" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Zip"] %></label>
                            <input id="BillingZip" name="BillingZip" type="tel" value="<%= ViewData["BillingZip"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="BillingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @PHONE --%>
                        <li id="PhoneCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="PhoneLabel" for="Phone" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Phone"] %></label>
                            <input id="Phone" name="Phone" type="tel" value="<%= ViewData["Phone"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["PhonePlaceholder"] %>" aria-labelledby="PhoneLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @EMAIL --%>
                        <li id="EmailCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="EmailLabel" for="Email" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Email"] %></label>
                            <input id="Email" name="Email" type="email" value="<%= ViewData["Email"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["EmailPlaceholder"] %>" aria-labelledby="EmailLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <% if ( SettingsManager.ContextSettings["OrderFormReview.ShowPrivacyPolicy", false] ) { %>
        				<%-- // @PRIVACY POLICY --%>
        				<li id="PrivacyCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
        					<a href="<%= SettingsManager.ContextSettings["OrderFormReview.PrivacyPolicyLink"] %><%= Model.Extension %>" title="<%= SettingsManager.ContextSettings["Label.ProductName"] %> | <%= LabelsManager.Labels["PrivacyPolicyText"] %>">
        						<%= LabelsManager.Labels["PrivacyPolicyText"] %>
        					</a>
        				</li>
                        <% } %>

                    </ul>

                </fieldset>
                <%-- // END #billingInformation --%>




                <%-- // BEGIN #ShippingIsSame --%>
                <label id="ShippingIsSame" for="ShippingIsDifferentThanBilling" class="o-grid--vert--center u-mar--bottom">
                    <div class="o-grid__col u-pad"><%= Html.CheckBoxFor(m => m.ShippingIsDifferentThanBilling) %></div>
                    <p class="o-grid__col u-pad"><%= LabelsManager.Labels["IsShippingDifferentFromBillingDisclaimer"] %></p>
                </label>
                <%-- // END #ShippingIsSame --%>




                <%-- // BEGIN #shippingInformation --%>
                <fieldset id="shippingInformation" class="c-brand--form__fieldset">

                    <%-- // @SHIPPING HEADLINE --%>
                    <div class="c-brand--form__legend u-vw--100">
                        <h3 class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["ShippingStep"] %></b> <%= LabelsManager.Labels["ShippingHeadline"] %>
        				</h3>
                    </div>

                    <ul class="c-brand--form__list u-pad">

                        <%-- // @SHIPPING FULL NAME --%>
                        <li id="ShippingFullNameCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="ShippingFullNameLabel" for="ShippingFullName" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["FullName"] %></label>
                            <input id="ShippingFullName" name="ShippingFullName" type="text" value="<%= ViewData["ShippingFullName"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="ShippingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING STREET --%>
                        <li id="ShippingStreetCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="ShippingStreetLabel" for="ShippingStreet" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Address"] %></label>
                            <input id="ShippingStreet" name="ShippingStreet" type="text" value="<%= ViewData["ShippingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["AddressPlaceholder"] %>" aria-labelledby="ShippingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING STREET 2 --%>
                        <li id="ShippingStreet2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="ShippingStreet2Label" for="ShippingStreet2" class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Address2"] %></label>
                            <input id="ShippingStreet2" name="ShippingStreet2" type="text" value="<%= ViewData["ShippingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Address2Placeholder"] %>" aria-labelledby="ShippingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING CITY --%>
                        <li id="ShippingCityCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="ShippingCityLabel" for="ShippingCity" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["City"] %></label>
                            <input id="ShippingCity" name="ShippingCity" type="text" value="<%= ViewData["ShippingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="ShippingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING COUNTRY --%>
                        <li id="ShippingCountryCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label for="ShippingCountry" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Country"] %></label>
                            <%= Html.DropDownListFor(m => m.ShippingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), LabelsManager.Labels["CountryPlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @sm-u-vw--100 fx--animate" })%>
                        </li>

                        <%-- // @SHIPPING STATE --%>
                        <li id="ShippingStateCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label for="ShippingState" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["State"] %></label>
                            <%= Html.DropDownListFor(m => m.ShippingState, new SelectList(Model.States, "StateCode", "StateName"), LabelsManager.Labels["StatePlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @sm-u-vw--100 fx--animate" })%>
                        </li>

                        <%-- // @SHIPPING ZIP --%>
                        <li id="ShippingZipCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id="ShippingZipLabel" for="ShippingZip" data-required class="c-brand--form__label @sm-o-grid--none o-grid__col @sm-u-vw--40 fn--right"><%= LabelsManager.Labels["Zip"] %></label>
                            <input id="ShippingZip" name="ShippingZip" type="tel" value="<%= ViewData["ShippingZip"] %>" maxlength="10" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="ShippingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @sm-u-vw--100 fx--animate">
                        </li>

                    </ul>

                </fieldset>
                <%-- // END #shippingInformation --%>

                  </div>

                <%-- // BEGIN #calltoAction --%>
                <fieldset id="calltoAction">

                    <ul class="c-brand--form__list u-pad @dv-u-pad--horz">

                        <%-- // @PROCESS ORDER BUTTON --%>
                        <li class="c-brand--form__item o-grid--vert--center u-vw--100 u-mar--top fn--center">
                            <p class="u-mar--bottom @x2-mar">Our two-year warranty covers all servicing/replacement. Should an issue arise, contact us at <a href="tel:844-627-7738" title="Reach out to <%= CampaignName %> by phone">844-627-7738</a>. We also reserve the right to re-purchase <%= CampaignName %>, covering all costs and shipping, within two years from purchase. Checking out signifies acceptance of our warranty, <a href="https://www.pg.com/en_US/terms_conditions/index.shtml" class="has-popup" title="<%= CampaignName %> | Terms and Conditions">Terms & Conditions</a>, and buyback policies as well as awareness of our <a href="https://www.pg.com/privacy/english/privacy_statement.shtml" title="<%= CampaignName %> | Privacy" class="has-popup">Privacy Policy.</a></p>
                              
                            <img class="is-PayPal" id="paypalBt" style="display:none;" src="/shared/images/pp-checkout-logo-large.png"/>
                            <button type="submit" id="AcceptOfferButton" name="acceptOffer" class="button button--primary button--visible" title="Order <%= CampaignName %> Today">Process Order</button>
                        </li>

                        <%-- // @PROCESS ORDER TEXT --%>
                        <li class="c-brand--form__item c-brand--form__submission o-grid--vert--center u-vw--100 fn--center" tabindex="0">
        					<p id="ordertxt"><%= LabelsManager.Labels["SubmissionDisclaimer"] %></p>
                            <% Html.RenderSiteControl("InsureShipCheckbox"); %>
                        </li>

                        <%-- // @SSL BADGE --%>
                        <li class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <img src="/shared/images/PositiveSSL_tl_trans.png?appV=<%= DtmContext.ApplicationVersion %>" alt="SSL" class="is-SSL u-mar--center u-mar--horz">
                        </li>

                    </ul>

                </fieldset>
                <%-- // END #calltoAction --%>

            </div>



        </div>



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