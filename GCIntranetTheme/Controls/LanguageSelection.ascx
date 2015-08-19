<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LanguageSelection.ascx.cs" Inherits="GCIntranetTheme.Controls.LanguageSelection" %>
<section id="wb-lng"><h2><asp:Localize ID="LocalizeLanguageSelection" runat="server" Text="Language selection" meta:resourcekey="LocalizeLanguageSelectionResource1" /></h2>
<asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
        <ul class="list-inline">
    </HeaderTemplate>

    <ItemTemplate>
        <li><asp:HyperLink ID="HyperLinkLanguage" runat="server" lang='<%#Eval("abbr") %>' Text='<%#Eval("name") %>' NavigateUrl='<%#Eval("page") %>' /></li>
    </ItemTemplate>

    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
</section>