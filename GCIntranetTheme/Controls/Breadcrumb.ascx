<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Breadcrumb.ascx.cs" Inherits="GCIntranetTheme.Controls.Breadcrumb" %>
<%--<form id="Form1" runat="server">
<ol class="breadcrumb">
<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="EnglishSiteMapProvider" SkipLinkText="" CssClass="" >
    <CurrentNodeTemplate>
        <%# Eval("title", "<li>{0}</li>")%>
    </CurrentNodeTemplate>
    <NodeTemplate>
        <li><a href='<%# Eval("url") %>' title='<%# Eval("description") %>'><%# Eval("title") %></a></li>
    </NodeTemplate>
    <PathSeparatorTemplate></PathSeparatorTemplate>
</asp:SiteMapPath>
</ol>
</form>--%>


<nav role="navigation" id="wb-bc" property="breadcrumb">
<h2>You are here:</h2>
<div class="container">
<div class="row">

<ol class="breadcrumb">
<li>
<a href="http://wet-boew.github.io/v4.0-ci/index-en.html">Home</a>
</li>
<li>
<a href="http://wet-boew.github.io/v4.0-ci/demos/index-en.html">Working examples</a>
</li>
<li>
<a href="index-en.html">Government of Canada Intranet theme</a>
</li>
<li>Content page</li>
</ol>
</div>
</div>
</nav>