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
        protected void Page_Load(object sender, EventArgs e)
        {
            //NOTE:  There doesn't seem to be a way to localize the data-ajax-replace attribute because the nav ID contains a dash.
            if (((BasePage)Page).Language == "fr")
            {
                PlaceHolderEnglish.Visible = false;
                PlaceHolderFrench.Visible = true;
            }
            else
            {
                PlaceHolderEnglish.Visible = true;
                PlaceHolderFrench.Visible = false;
            }

            //REVIEW:  There may be a benefit in creating a sitemenu for the top nav to make a fix easier if the links were to change.

            //TODO: Determine value of ShowSiteMenu and set the visibility of the two placeholders.
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
    }
}