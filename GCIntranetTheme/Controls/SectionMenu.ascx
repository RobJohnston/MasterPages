<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionMenu.ascx.cs" Inherits="GCIntranetTheme.Controls.SecondaryMenu" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false" StartingNodeUrl="~/default.aspx" StartingNodeOffset="0" />
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SiteMapDataSource1" OnItemDataBound="RepeaterItemEventHandler">
    <HeaderTemplate>
        <nav role="navigation" id="wb-sec" typeof="SiteNavigationElement" class="col-md-3 col-md-pull-9 visible-md visible-lg">
        <h2><%= this.SectionTitle %></h2>
        <ul class="list-group menu list-unstyled">
        <li>
        <h3 class="wb-navcurr"><%= this.SectionTitle %></h3>
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