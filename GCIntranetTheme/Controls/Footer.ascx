<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="GCIntranetTheme.Controls.Footer" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="False" />
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SiteMapDataSource1">
    <HeaderTemplate>
        <footer role="contentinfo" id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">
        <div class="container">
        <nav role="navigation">
        <h2><asp:Localize ID="LocalizeAbout" runat="server" Text="About this site" meta:resourcekey="LocalizeAboutResource1" /></h2>
        <div class="row">
    </HeaderTemplate>

    <ItemTemplate>
        <section class="col-sm-3">
        <h3><%# Eval("Title") %></h3>
            <asp:Repeater runat="server" DataSource='<%# ((SiteMapNode) Container.DataItem).ChildNodes %>'>
                <HeaderTemplate>
                    <ul class="list-unstyled">
                </HeaderTemplate>
                <ItemTemplate>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Url") %>'><%# Eval("Title") %></asp:HyperLink></li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
        </section>
    </ItemTemplate>

    <FooterTemplate>
        </div>
        <ul id="gc-tctr" class="list-inline">
        <li><asp:HyperLink runat="server" rel="license" NavigateUrl="http://wet-boew.github.io/wet-boew/License-en.html" Text="Terms and conditions" meta:resourcekey="HyperLinkResource1" /></li>
        <li><asp:HyperLink runat="server" NavigateUrl="http://www.tbs-sct.gc.ca/tbs-sct/common/trans-eng.asp" Text="Transparency" meta:resourcekey="HyperLinkResource2" /></li>
        </ul>
        </nav>
        </div>
        </footer>
    </FooterTemplate>
</asp:Repeater>