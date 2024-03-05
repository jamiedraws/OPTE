using Dtm.Framework.Base.Controllers;
using Dtm.Framework.ClientSites.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Web.Caching;
using System.Web.Mvc;

namespace OPTE.Controllers
{
    public class LeadFormController : DtmContextController
    {
        [HttpPost]
        public ActionResult RenderLeadFormPartial()
        {
            return View("GetModalLeadForm");
        }
    }
}