<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="GCWebTheme.Controls.Search" %>
<section id="wb-srch" class="col-xs-6 text-right visible-md visible-lg">
<h2 class="wb-inv"><asp:Localize runat="server" Text="Search" meta:resourcekey="LocalizeResource1" /></h2>
<form action="#" method="post" name="cse-search-box" role="search" class="form-inline">
<div class="form-group">
<label for="wb-srch-q" class="wb-inv"><asp:Localize runat="server" Text="Search website" meta:resourcekey="LocalizeResource2" /></label>
<asp:PlaceHolder ID="PlaceHolderEnglish" runat="server">
<input id="wb-srch-q" list="wb-srch-q-ac" class="wb-srch-q form-control" name="q" type="search" value="" size="27" maxlength="150" placeholder="Search Canada.ca">
    </asp:PlaceHolder>
<asp:PlaceHolder ID="PlaceHolderFrench" runat="server" Visible="False">
<input id="wb-srch-q" list="wb-srch-q-ac" class="wb-srch-q form-control" name="q" type="search" value="" size="27" maxlength="150" placeholder="Rechercher dans Canada.ca">
    </asp:PlaceHolder>
<datalist id="wb-srch-q-ac">
<!--[if lte IE 9]><select><![endif]-->
<!--[if lte IE 9]></select><![endif]-->
</datalist>
</div>
<div class="form-group submit">
<button type="submit" id="wb-srch-sub" class="btn btn-primary btn-small" name="wb-srch-sub"><span class="glyphicon-search glyphicon"></span><span class="wb-inv"><asp:Localize runat="server" Text="Search" meta:resourcekey="LocalizeResource3" /></span></button>
</div>
</form>
</section>