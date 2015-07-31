<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionMenu.ascx.cs" Inherits="GCWebTheme.Controls.SectionMenu" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false" StartingNodeUrl="~/default.aspx" StartingNodeOffset="0" />
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SiteMapDataSource1" OnItemDataBound="RepeaterItemEventHandler">
    <HeaderTemplate>
        <nav class="wb-sec col-md-3 col-md-pull-9" typeof="SiteNavigationElement" id="wb-sec" role="navigation">
        <h2 id="wb-sec-h" class="wb-inv"><%= SiteMap.Providers[myProvider].CurrentNode.ParentNode.Title %></h2>
        <ul class="list-group menu list-unstyled">
        <li>
        <h3 class="wb-navcurr"><%= SiteMap.Providers[myProvider].CurrentNode.ParentNode.Title %></h3>
        <ul class="list-group menu list-unstyled">
    </HeaderTemplate>

    <ItemTemplate>
        <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="list-group-item" NavigateUrl='<%# Eval("Url") %>'> <%# Eval("Title") %></asp:HyperLink></li>
    </ItemTemplate>

    <FooterTemplate>
        </ul>
        </li>
        </ul>
        </nav>
    </FooterTemplate>
</asp:Repeater>