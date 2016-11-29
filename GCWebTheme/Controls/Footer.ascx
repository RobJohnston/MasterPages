<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="GCWebTheme.Controls.Footer" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="true" />
<footer role="contentinfo" id="wb-info">
<nav role="navigation" class="container visible-sm visible-md visible-lg wb-navcurr">
<h2 class="wb-inv"><asp:Localize ID="LocalizeAbout" runat="server" meta:resourcekey="LocalizeAboutResource1" /></h2>
<div class="row">
<div class="col-sm-3 col-lg-3">
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SiteMapDataSource1">
    <HeaderTemplate>
        
    </HeaderTemplate>

    <ItemTemplate>
        <section>
        <h3><%# Eval("Title") %></h3>
            <asp:Repeater runat="server" DataSource='<%# ((SiteMapNode) Container.DataItem).ChildNodes %>'>
                <HeaderTemplate>
                    <ul class="list-unstyled">
                </HeaderTemplate>
                <ItemTemplate>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Url") %>'> <%# Eval("Title") %></asp:HyperLink></li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
        </section>
    </ItemTemplate>

    <FooterTemplate>
        
    </FooterTemplate>
</asp:Repeater>
<section>
<h3><asp:Localize ID="Localize2" runat="server" meta:resourcekey="Localize2Resource1" /></h3>
<ul class="list-unstyled">
<li><asp:HyperLink ID="HyperLink2A" runat="server" meta:resourcekey="HyperLink2AResource1" /></li>
<li><asp:HyperLink ID="HyperLink2B" runat="server" meta:resourcekey="HyperLink2BResource1" /></li>
<li><asp:HyperLink ID="HyperLink2C" runat="server" meta:resourcekey="HyperLink2CResource1" /></li>
<li><asp:HyperLink ID="HyperLink2D" runat="server" meta:resourcekey="HyperLink2DResource1" /></li>
<li><asp:HyperLink ID="HyperLink2E" runat="server" meta:resourcekey="HyperLink2EResource1" /></li>
</ul>
</section>
</div>
<section class="col-sm-3 col-lg-3">
<h3><asp:Localize ID="Localize3" runat="server" meta:resourcekey="Localize3Resource1" /></h3>
<ul class="list-unstyled">
<li><asp:HyperLink ID="HyperLink3A" runat="server" meta:resourcekey="HyperLink3AResource1" /></li>
<li><asp:HyperLink ID="HyperLink3B" runat="server" meta:resourcekey="HyperLink3BResource1" /></li>
<li><asp:HyperLink ID="HyperLink3C" runat="server" meta:resourcekey="HyperLink3CResource1" /></li>
<li><asp:HyperLink ID="HyperLink3D" runat="server" meta:resourcekey="HyperLink3DResource1" /></li>
<li><asp:HyperLink ID="HyperLink3E" runat="server" meta:resourcekey="HyperLink3EResource1" /></li>
<li><asp:HyperLink ID="HyperLink3F" runat="server" meta:resourcekey="HyperLink3FResource1" /></li>
<li><asp:HyperLink ID="HyperLink3G" runat="server" meta:resourcekey="HyperLink3GResource1" /></li>
<li><asp:HyperLink ID="HyperLink3H" runat="server" meta:resourcekey="HyperLink3HResource1" /></li>
<li><asp:HyperLink ID="HyperLink3I" runat="server" meta:resourcekey="HyperLink3IResource1" /></li>
<li><asp:HyperLink ID="HyperLink3J" runat="server" meta:resourcekey="HyperLink3JResource1" /></li>
</ul>
</section>
<section class="col-sm-3 col-lg-3 brdr-lft">
<h3><asp:Localize ID="Localize4" runat="server" meta:resourcekey="Localize4Resource1" /></h3>
<ul class="list-unstyled">
<li><asp:HyperLink ID="HyperLink4A" runat="server" meta:resourcekey="HyperLink4AResource1" /></li>
<li><asp:HyperLink ID="HyperLink4B" runat="server" meta:resourcekey="HyperLink4BResource1" /></li>
<li><asp:HyperLink ID="HyperLink4C" runat="server" meta:resourcekey="HyperLink4CResource1" /></li>
<li><asp:HyperLink ID="HyperLink4D" runat="server" meta:resourcekey="HyperLink4DResource1" /></li>
<li><asp:HyperLink ID="HyperLink4E" runat="server" meta:resourcekey="HyperLink4EResource1" /></li>
</ul>
</section>
<div class="col-sm-3 col-lg-3 brdr-lft">
<section>
<h3><asp:Localize ID="Localize5" runat="server" meta:resourcekey="Localize5Resource1" /></h3>
<p><asp:HyperLink ID="HyperLinkFeedback" runat="server" meta:resourcekey="HyperLinkFeedbackResource1" /></p>
</section>
<section>
<h3><asp:Localize ID="Localize6" runat="server" meta:resourcekey="Localize6Resource1" /></h3>
<p><asp:HyperLink ID="HyperLinkSocial" runat="server" meta:resourcekey="HyperLinkSocialResource1" /></p>
</section>
<section>
<h3><asp:Localize ID="Localize7" runat="server" meta:resourcekey="Localize7Resource1" /></h3>
<p><asp:HyperLink ID="HyperLinkMobile" runat="server" meta:resourcekey="HyperLinkMobileResource1" /></p>
</section>
</div>
</div>
</nav>
<div class="brand">
<div class="container">
<div class="row">
<div class="col-xs-6 visible-sm visible-xs tofpg">
<asp:HyperLink runat="server" NavigateUrl="#wb-cont" meta:resourcekey="HyperLinkResource1" />
</div>
<div class="col-xs-6 col-md-12 text-right">
<asp:Literal runat="server" meta:resourcekey="LocalizeWordMarkResource1" />
</div>
</div>
</div>
</div>
</footer>