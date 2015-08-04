<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="GCIntranetTheme.Controls.Footer" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false" />
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SiteMapDataSource1">
    <HeaderTemplate>
        <footer role="contentinfo" id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">
        <div class="container">
        <nav role="navigation">
        <h2><asp:Localize ID="LocalizeAbout" runat="server" Text="About this site" /></h2>
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
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Url") %>'> <%# Eval("Title") %></asp:HyperLink></li>
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
        <li><a rel="license" href="http://wet-boew.github.io/wet-boew/License-en.html">Terms and conditions</a></li>
        <li><a href="http://www.tbs-sct.gc.ca/tbs-sct/common/trans-eng.asp">Transparency</a></li>
        </ul>
        </nav>
        </div>
        </footer>
    </FooterTemplate>
</asp:Repeater>