﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="GCWebTheme.Controls.Search" %>
<section id="wb-srch" class="col-xs-6 text-right visible-md visible-lg">
<h2 class="wb-inv"><%=Localization.TemplateStrings.tmpl_search %></h2>
<form action="#" method="post" name="cse-search-box" role="search" class="form-inline">
<div class="form-group">
<label for="wb-srch-q" class="wb-inv"><%=Localization.TemplateStrings.tmpl_search_site %></label>
<input id="wb-srch-q" list="wb-srch-q-ac" class="wb-srch-q form-control" name="q" type="search" value="" size="27" maxlength="150" placeholder="<%=Localization.TemplateStrings.tmpl_search %> Canada.ca">
<datalist id="wb-srch-q-ac">
<!--[if lte IE 9]><select><![endif]-->
<!--[if lte IE 9]></select><![endif]-->
</datalist>
</div>
<div class="form-group submit">
<button type="submit" id="wb-srch-sub" class="btn btn-primary btn-small" name="wb-srch-sub"><span class="glyphicon-search glyphicon"></span><span class="wb-inv"><%=Localization.TemplateStrings.tmpl_search %></span></button>
</div>
</form>
</section>