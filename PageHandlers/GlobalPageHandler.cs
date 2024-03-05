using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Models;
using Dtm.Framework.Models.Ecommerce;
using Dtm.Framework.ClientSites;
using System.Net;
using System.Text;
using System.IO;
using System.Web;
using System.Web.Mvc;
using System;

namespace OPTE.PageHandlers
{
    public class GlobalPageHandler : PageHandler
    {

        #region " Overrides... "

        public override void BeginRequest(HttpRequestBase request, HttpResponseBase response, ref string pageCode)
        {
            if (DtmContext.Order != null)
            {
                var payType = DtmContext.Order.OrderCodes.FirstOrDefault(oc => oc.Label == "PaymentType");
                if (payType != null && payType.Code == "PayPal" && DtmContext.Page.PageCode == "Confirmation")
                {
                    DtmContext.Order.OrderStatusId = 3;
                }
            }
        }

        public override void PostValidate(ModelStateDictionary modelState)
        {
            if (DtmContext.Page.IsStartPageType)
            {
                var total = PostData.Sum(pd => pd.Value);

                if (total == 0)
                {
                    modelState.AddModelError("Form", "Please ensure a product is selected");
                }
            }
        }

        public override void PostProcessPageActions()
        {
            //Checking for the pages code based on the main order pages array on line ten.
            if (DtmContext.Page.IsStartPageType)
            {
                Trace.WriteLine("Processing post page actions...");

            }
        }



        public override void PostSetOrderStatus()
        {
            var payType = Order.OrderCodes.FirstOrDefault(oc => oc.Label == "PaymentType");
            var remoteType = Order.OrderCodes.FirstOrDefault(oc => oc.Label == "RemoteType");

            if (payType != null && payType.Code == "PayPal")
            {
                Order.OrderStatusId = 1;
            }
            else if (remoteType != null && remoteType.Code == "ProductLead")
            {
                Order.ConfirmationEmailSent = true;
                Order.AddOrderCode("true", "ConfirmationEmailSkipped");
                Order.OrderStatusId = 0;
            }
        }

        #endregion
    }
}
