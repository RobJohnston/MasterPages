<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SiteMenu.ascx.cs" Inherits="GCIntranetTheme.Controls.SiteMenu" %>
<asp:PlaceHolder ID="PlaceHolderSiteMenu" runat="server">
<asp:PlaceHolder ID="PlaceHolderEnglish" runat="server" Visible="true">
<nav role="navigation" id="wb-sm" data-ajax-replace="/wet-v4/dist/ajax/sitemenu-en.html" data-trgt="mb-pnl" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">
</asp:PlaceHolder>
<asp:PlaceHolder ID="PlaceHolderFrench" runat="server" Visible="false">
<nav role="navigation" id="wb-sm" data-ajax-replace="/wet-v4/dist/ajax/sitemenu-fr.html" data-trgt="mb-pnl" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">
</asp:PlaceHolder>
<div class="container nvbar">
<h2><asp:Localize ID="LocalizeTopicsMenu" runat="server" Text="Topics menu" meta:resourcekey="LocalizeTopicsMenuResource1" /></h2>
<div class="row">
<ul class="list-inline menu">
<li><asp:HyperLink runat="server" NavigateUrl="./index-en.htm" Text="WET project" meta:resourcekey="HyperLinkResource1" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="./docs/start-en.html#implement" Text="Implement WET" meta:resourcekey="HyperLinkResource2" /></li>
<li><asp:HyperLink runat="server" NavigateUrl="./docs/start-en.html" Text="Contribute to WET" meta:resourcekey="HyperLinkResource3" /></li>
</ul>
</div>
</div>
</nav>
</asp:PlaceHolder>
<asp:PlaceHolder ID="PlaceHolderNoSiteMenu" runat="server" Visible="False">
<span data-trgt="mb-pnl" class="wb-menu hide" visible="false"></span>
</asp:PlaceHolder>