<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopOfPage.ascx.cs" Inherits="GCIntranetTheme.Controls.TopOfPage" %>
<ul id="wb-tphp">
<li class="wb-slc">
<a class="wb-sl" href="#wb-cont"><asp:Localize ID="LocalizeSkipToMainContent" runat="server" Text="Skip to main content" meta:resourcekey="LocalizeSkipToMainContentResource1" /></a>
</li>
<li class="wb-slc visible-sm visible-md visible-lg">
<a class="wb-sl" href="#wb-info"><asp:Localize ID="LocalizeSkipToAboutThisSite" runat="server" Text='Skip to "About this site"' meta:resourcekey="LocalizeSkipToAboutThisSiteResource1" /></a>
</li>
<asp:PlaceHolder ID="PlaceHolderSecondaryMenu" runat="server" Visible="False">
<li class="wb-slc visible-md visible-lg">
<a class="wb-sl" href="#wb-sec"><asp:Localize ID="LocalizeSkipToSectionMenu" runat="server" Text="Skip to section menu" meta:resourcekey="LocalizeSkipToSectionMenuResource1" /></a>
</li>
</asp:PlaceHolder>
</ul>