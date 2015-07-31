<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SiteMenu.ascx.cs" Inherits="GCWebTheme.Controls.SiteMenu" %>
<asp:PlaceHolder ID="PlaceHolderEnglish" runat="server" Visible="true">
<nav role="navigation" id="wb-sm" class="wb-menu visible-md visible-lg" data-trgt="mb-pnl" data-ajax-replace="/wet-v4/dist/ajax/sitemenu-en.html" typeof="SiteNavigationElement">
</asp:PlaceHolder>
<asp:PlaceHolder ID="PlaceHolderFrench" runat="server" Visible="false">
<nav role="navigation" id="wb-sm" class="wb-menu visible-md visible-lg" data-trgt="mb-pnl" data-ajax-replace="/wet-v4/dist/ajax/sitemenu-fr.html" typeof="SiteNavigationElement">
</asp:PlaceHolder>
<h2 class="wb-inv"><asp:Localize ID="LocalizeTopicsMenu" runat="server" Text="Topics menu" meta:resourcekey="LocalizeTopicsMenuResource1" /></h2>
<div class="container nvbar">
<div class="row">
<ul class="list-inline menu">
<li><asp:HyperLink runat="server" NavigateUrl="http://www.esdc.gc.ca/en/jobs/index.page" Text="Jobs" meta:resourcekey="HyperLinkResource1" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://www.cic.gc.ca/english/index.asp" Text="Immigration" meta:resourcekey="HyperLinkResource2" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://travel.gc.ca" Text="Travel" meta:resourcekey="HyperLinkResource3" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://www.canada.ca/en/services/business/index.html" Text="Business" meta:resourcekey="HyperLinkResource4" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://www.canada.ca/en/services/benefits/index.html" Text="Benefits" meta:resourcekey="HyperLinkResource5" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://healthycanadians.gc.ca/index-eng.php" Text="Health" meta:resourcekey="HyperLinkResource6" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://www.canada.ca/en/services/taxes/index.html" Text="Taxes" meta:resourcekey="HyperLinkResource7" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="http://www.canada.ca/en/services/index.html" Text="More services" meta:resourcekey="HyperLinkResource8" /></li>
</ul>
</div>
</div>
</nav>