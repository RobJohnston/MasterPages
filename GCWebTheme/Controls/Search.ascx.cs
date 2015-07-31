using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCWebTheme.Controls
{
    public partial class Search : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //NOTE:  There doesn't seem to be a way to localize the placeholder text because the input ID contains dashes.
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
        }
    }
}