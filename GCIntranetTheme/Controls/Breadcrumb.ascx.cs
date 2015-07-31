using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Globalization;

namespace GCIntranetTheme.Controls
{
    public partial class Breadcrumb : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (CultureInfo.CurrentCulture.Name.Contains("fr"))
            //{
            //    smpBC.SiteMapProvider = "FrenchSitemapProvider";
            //}
            //else
            //{
            //    smpBC.SiteMapProvider = "EnglishSitemapProvider";
            //}
        }

        //public string SiteMap()
        //{
        //    return ListChildNodes(System.Web.SiteMap.RootNode);
        //}
        //private string ListChildNodes(System.Web.SiteMapNode node)
        //{
        //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //    sb.Append("<ol class='breadcrumb'>");
        //    foreach (SiteMapNode item in node.ChildNodes)
        //    {
        //        sb.Append(string.Concat("<li><a href=\"", item.Url, "\">", item.Title, "</a></li>"));
        //        if (item.HasChildNodes)
        //            sb.Append(ListChildNodes(item));
        //    }
        //    sb.Append("</ol>");

        //    return sb.ToString();
        //}
    }
}