<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="GCIntranetTheme.Controls.Search" %>
<section id="wb-srch" class="visible-md visible-lg">
<h2><asp:Localize runat="server" Text="Search" meta:resourcekey="LocalizeResource1" /></h2>
<form action="https://google.ca/search" method="get" role="search" class="form-inline">
<div class="form-group">
<label for="wb-srch-q"><asp:Localize runat="server" Text="Search website" meta:resourcekey="LocalizeResource2" /></label>
<input id="wb-srch-q" class="form-control" name="q" type="search" value="" size="27" maxlength="150">
<input type="hidden" name="q" value="site:wet-boew.github.io OR site:github.com/wet-boew/">
</div>
<button type="submit" id="wb-srch-sub" class="btn btn-default"><asp:Localize runat="server" Text="Search" meta:resourcekey="LocalizeResource3" /></button>
</form>
</section>