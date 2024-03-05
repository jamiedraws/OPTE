using Dtm.Framework.ClientSites.Web;
using System.Web.Mvc;
using Dtm.Framework.Models;
using System.Web.Routing;
using System.Collections.Generic;
using System.Linq;

namespace OPTE
{
    public class MvcApplication : ClientSiteApplication
    {
        protected override void ConfigureAdditionalRoutes(RouteCollection routes)
        {
            routes.MapRoute("Demo", "LoadDemo", new { controller = "Demo", action = "RenderDemoPartial" });
            base.ConfigureAdditionalRoutes(routes);
        }
    }
}