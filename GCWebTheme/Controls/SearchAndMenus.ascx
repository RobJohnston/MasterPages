﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchAndMenus.ascx.cs" Inherits="GCWebTheme.Controls.SearchAndMenus" %>
<section class="wb-mb-links col-xs-4 col-sm-3 visible-sm visible-xs" id="wb-glb-mn">
<h2><asp:Localize runat="server" Text="Search and menus" meta:resourcekey="LocalizeResource1" /></h2>
<ul class="list-inline text-right chvrn">
<li><asp:HyperLink runat="server" NavigateUrl="#mb-pnl" ToolTip="Search and menus" aria-controls="mb-pnl" CssClass="overlay-lnk" role="button" meta:resourcekey="HyperLinkResource1"><span class="glyphicon glyphicon-search"><span class="glyphicon glyphicon-th-list"><span class="wb-inv">Search and menus</span></span></span></asp:HyperLink></li>
</ul>
<div id="mb-pnl"></div>
</section>

