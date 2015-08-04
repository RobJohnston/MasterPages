using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCIntranetTheme.Controls
{
    public partial class Footer : System.Web.UI.UserControl
    {
        protected string myProvider = "EnglishFooterSiteMapProvider";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Set the sitemap provider.
            if (((BasePage)Page).Language == "fr")
            {
                myProvider = "FrenchFooterSiteMapProvider";
            }
            SiteMapDataSource1.SiteMapProvider = myProvider;

            //Set the starting node level of the sitemap.
            //NOTE:  The intention of a side menu is apparently to show siblings, not children, 
            //       but in practice, it does show children in a nested unordered list.  However,
            //       this is being discussed further.
            //SEE:  https://github.com/wet-boew/GCWeb/issues/776#issuecomment-65173962
            //      https://github.com/wet-boew/GCWeb/issues/995
            //SiteMapDataSource1.StartingNodeOffset = CurrentNodeLevel - 1;
        }
    }
}