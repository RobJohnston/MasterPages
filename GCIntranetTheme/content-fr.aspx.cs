using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCIntranetTheme
{
    public partial class content_fr : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "[FR] Content Page";
            Page.MetaDescription = "[FR] Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source software and free for use by departments and external Web communities";
            base.Issued = "2015-08-21";
            //base.Modified = "2015-07-29";
        }
    }
}