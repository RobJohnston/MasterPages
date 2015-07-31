﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCWebTheme.Controls
{
    public partial class Breadcrumb : System.Web.UI.UserControl
    {
        protected string myProvider = "EnglishSiteMapProvider";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Set the sitemap provider
            if (((BasePage)Page).Language == "fr")
            {
                myProvider = "FrenchSiteMapProvider";
            }
            SiteMapDataSource1.SiteMapProvider = myProvider;

            //Create the bulleted list
            BreadcrumbListItems.Text = string.Format("<li><a href=\"{0}\">{1}</a></li>{2}", SiteMap.Providers[myProvider].RootNode.Url, SiteMap.Providers[myProvider].RootNode.Title, DisplaySiteMapLevelAsBulletedList());
        }

        private string DisplaySiteMapLevelAsBulletedList()
        {
            //Get the SiteMapDataSourceView from the siteMapData SiteMapDataSource
            SiteMapDataSourceView siteMapView = (SiteMapDataSourceView)SiteMapDataSource1.GetView(string.Empty);

            //Get the SiteMapNodeCollection from the SiteMapDataSourceView
            SiteMapNodeCollection nodes = (SiteMapNodeCollection)siteMapView.Select(DataSourceSelectArguments.Empty);

            //Recurse through the SiteMapNodeCollection...
            return GetSiteMapLevelAsBulletedList(nodes);
        }

        private string GetSiteMapLevelAsBulletedList(SiteMapNodeCollection nodes)
        {
            string output = string.Empty;
            foreach (SiteMapNode node in nodes)
            {
                if (SiteMap.Providers[myProvider].CurrentNode.IsDescendantOf(node) || SiteMap.Providers[myProvider].CurrentNode == node)
                {
                    output += string.Format("<li><a href=\"{0}\">{1}</a>", node.Url, node.Title);

                    //Add any children levels, if needed (recursively)
                    if (node.HasChildNodes)
                    {
                        output += GetSiteMapLevelAsBulletedList(node.ChildNodes);
                    }

                    output += "</li>";
                }
            }

            return output;
        }
    }
}