using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCIntranetTheme
{
    public partial class splashpage : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Language selection - Government of Canada Intranet theme - Web Experience Toolkit / Sélection de la langue - Thème du gouvernement du Canada pour les sites intranet - Boîte à outils de l’expérience Web - Web Experience Toolkit";
            Page.MetaDescription = "Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source software and free for use by departments and external Web communities";

            //TODO:  The language buttons can be created based on the WetBoewGroup/WetBoew/Languages section of the web.config file.  But how to handle "Terms and conditions"?
        }
    }
}