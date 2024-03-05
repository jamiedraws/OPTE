<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
 
<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>
 
<div id="leadform" class="modal modal--lead--form">
    <div class="modal__container leadFormContent" style="display: none">
        <div class="modal__in">
            <button class="modal__close">Close</button>
            <div class="modal__content">
                <img class="modal__logo" src="/images/opte-icon.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %>">
                <h2 class="modal__title">Thank You</h2>
                <p>Thank you! You have been added to our priority waiting list. We will contact you as soon as <%= CampaignName %> is available.</p>
            </div>
        </div>
    </div>
    <div class="modal__container leadFormContent">
        <form action="/" method="post" onsubmit="return false;">
            <button class="modal__close" id="closeLead">Close</button>
            <div class="modal__content">
                <img class="modal__logo" src="/images/opte-icon.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %>">
                <h2 class="modal__title">Thank You</h2>
                <p>Thank you for your interest in <%= CampaignName %>. Unfortunately, this tone is not available just yet. 
                   Please join our priority waiting list and we'll let you know as soon as it is ready.</p>
            </div>
            <div class="from__fieldset">
                <ul id="errors" class="fieldset__errors"></ul>
            </div>
            <fieldset class="modal__fieldset">
                <ul>
                    <li id="BillingFirstNameCt">
                        <label id="BillingFirstNameLabel" for="BillingFirstName"><%= LabelsManager.Labels["FirstName"] %></label>
                        <input id="BillingFirstNameDeep" maxlength="50" name="BillingFullName" type="text" value="<%= ViewData["BillingFirstName"] %>" placeholder="<%= LabelsManager.Labels["FirstNamePlaceholder"] %>" aria-labelledby="BillingFirstNameLabel" aria-required="true">
                    </li>
                    <li id="BillingLastNameCt">
                        <label id="BillingLastNameLabel" for="BillingLastName"><%= LabelsManager.Labels["LastName"] %></label>
                        <input id="BillingLastNameDeep" maxlength="50" name="BillingLastName" type="text" value="<%= ViewData["BillingLastName"] %>" placeholder="<%= LabelsManager.Labels["LastNamePlaceholder"] %>" aria-labelledby="BillingLastNameLabel" aria-required="true">
                    </li>
                    <li id="EmailCt">
                        <label id="EmailLabel" for="Email"><%= LabelsManager.Labels["Email"] %></label>
                        <input id="EmailDeep" maxlength="50" name="Email" type="email" value="<%= ViewData["Email"] %>" placeholder="<%= LabelsManager.Labels["EmailPlaceholder"] %>" aria-labelledby="EmailLabel" aria-required="true">
                    </li>
                    <li id="SubmitCt">
                        <input  type="submit" name="acceptLead" value="Submit" onclick="submitLead();">
                    </li>
                </ul>
            </fieldset>
        </form>
    </div>
  </div>
</div>
 
<style>
    .fieldset__errors {
        color: #684646;
        display: block;
        background: #fabcbc;
    }
 
    .fieldset__errors--has-errors {
        padding: 1rem 3rem;
        margin: 0 1rem;
    }
</style>
 
<script>

    var $lead__form = $('#leadform');
    function submitLead() {
        if (validateForm())
        {
            var url = '/<%=DtmContext.OfferCode%>/<%=DtmContext.Version%>';
            $.post(url, {
                BillingFirstName: $('#BillingFirstNameDeep').val(),
                BillingLastName: $('#BillingLastNameDeep').val(),
                Email: $('#EmailDeep').val(),
                acceptOffer: 'acceptOffer',
                RemoteType: 'ProductLead',
                ActionCode0: $("[name='Options']:checked").val(),
                OrderType: 'None'
            }, function (data) {
                // trigger form submission for  GA.ascx/FacebookSmartPixel.ascx files to pick up
                triggerEvent('FormSubmission', { category: 'LeadForm', action: 'submit', label: 'LeadForm' });

                // set piggby back pixels
                $("#leadform").append('<div id="leadformpixels"></div>');
                $('#leadformpixels').append(data.next.desc);

                $.post(url, { createOrder: 'createOrder', RemoteType: 'ProductLead' }, function (data) {
                    $.get('/ActivateVisitor?covid=<%=DtmContext.VersionId%>', function (data) {
                    $('#leadformpixels').remove();
                });
            });
            });
        }
       
    }

    function MailchimpResult(result) {
        console.log("Callback");
        console.log(result);
    }

    function validateForm() {
        var messages = [];
        var $errors = $("#errors");
        $errors.html("");

        if ($("#BillingFirstNameDeep").val().trim().length < 1) {
            messages.push("First Name is required");
        } else {
            var reg = /[^A-z ]+/;
            var firstName = $("#BillingFirstNameDeep").val().trim();

            console.log(reg.test(firstName));
            if (reg.test(firstName) == true) {
                messages.push("First Name can only contain letter characters");
            }
        }


        if ($("#BillingLastNameDeep").val().trim().length < 1) {
            messages.push("Last Name is required");
        } else {
            var reg = /[^A-z ]+/;
            var lastName = $("#BillingLastNameDeep").val().trim();

            console.log(reg.test(lastName));
            if (reg.test(lastName) == true) {
                messages.push("Last Name can only contain letter characters");
            }
        }


        console.log($("#EmailDeep").val());
        if ($("#EmailDeep").val().length < 1) {
            messages.push("Email is required");
        }
        else {
            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            emailaddress = document.getElementById("EmailDeep").value;

            console.log(reg.test(emailaddress));
            if (reg.test(emailaddress) == false) {
                messages.push("Invalid Email Address");
            }
        }

        if (messages.length > 0) {
            messages.forEach(function (item, index) {
                var li = $("<li/>").html(item);
                $errors.append(li);
            });
            $errors.addClass('fieldset__errors--has-errors');
            $lead__form.addClass('modal--change');
            return false;
        } else {
            $errors.removeClass('fieldset__errors--has-errors');
            $(".leadFormContent").toggle();
            setTimeout(function () {
                $('#closeLead').trigger('click');
            }, 10000);
            return true;
        }
    }
</script>