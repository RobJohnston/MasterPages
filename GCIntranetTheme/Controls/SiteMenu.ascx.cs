using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCIntranetTheme.Controls
{
    public partial class SiteMenu : System.Web.UI.UserControl
    {
        protected string myProvider = "EnglishHeaderSiteMapProvider";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Set the sitemap provider.
            if (((BasePage)Page).Language == "fr")
            {
                myProvider = "FrenchHeaderSiteMapProvider";
            }

            SiteMapDataSource1.SiteMapProvider = myProvider;

            //TODO: Hide or show the site menu depending on the setting of WetBoewGroup/WetBoew/@siteMenu in web.config (or overridden by a page-level setting?).
            //Wet_BoewMasterPage theMaster = (Wet_BoewMasterPage)Page.Master;

            //if (theMaster.ShowSiteMenu == true)
            //{
            //    this.PlaceHolderSiteMenu.Visible = true;
            //    this.PlaceHolderNoSiteMenu.Visible = false;
            //}
            //else
            //{
            //    this.PlaceHolderSiteMenu.Visible = false;
            //    this.PlaceHolderNoSiteMenu.Visible = true;
            //}
        }

        protected string SiteMenuFile
        {
            get
            {
                return string.Format("/wet-v4/dist/ajax/sitemenu-{0}.html", ((BasePage)Page).Language);
            }
        }
    }
}