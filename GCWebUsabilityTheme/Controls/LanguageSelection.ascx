<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LanguageSelection.ascx.cs" Inherits="GCWebUsabilityTheme.Controls.LanguageSelection" %>

<ul id="gc-bar" class="list-inline">
<li><a href="http://www.canada.ca/en/index.html" rel="external">Canada.ca</a></li>
<li><a href="http://www.canada.ca/en/services/index.html" rel="external">Services</a></li>
<li><a href="http://www.canada.ca/en/gov/dept/index.html" rel="external">Departments</a></li>
<li id="wb-lng"><h2>Language selection</h2>
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
</li>
</ul>