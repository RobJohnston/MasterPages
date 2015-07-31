<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateModified.ascx.cs" Inherits="GCWebTheme.Controls.DateModified" %>
<dl id="wb-dtmd">
<dt><asp:Localize ID="LocalizeDateModified" runat="server" Text="Date modified:&#32;" meta:resourcekey="LocalizeDateModifiedResource1" /></dt>
<dd><time property="dateModified"><%=this.PageDateModified%></time></dd>
</dl>