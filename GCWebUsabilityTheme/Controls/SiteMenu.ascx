<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SiteMenu.ascx.cs" Inherits="GCWebUsability.Controls.SiteMenu" %>
<asp:PlaceHolder ID="YesSiteMenu" runat="server" Visible="true">
<nav role="navigation" id="wb-sm" data-ajax-replace="../../../ajax/sitemenu-en.html" data-trgt="mb-pnl" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">
<div class="container nvbar">
<h2>Topics menu</h2>
<div class="row">
<ul class="list-inline menu">
<li><a href="../../../index-en.html">WET project</a></li>
<li><a href="../../../docs/start-en.html#implement">Implement WET</a></li>
<li><a href="../../../docs/start-en.html">Contribute to WET</a></li>
</ul>
</div>
</div>
</nav>
</asp:PlaceHolder>
<asp:PlaceHolder ID="NoSiteMenu" runat="server" Visible="false">
<span data-trgt="mb-pnl" class="wb-menu hide" visible="false"></span>
</asp:PlaceHolder>