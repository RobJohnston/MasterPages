<%@ Page Language="C#" MasterPageFile="~/Splash.master" AutoEventWireup="true" CodeBehind="splashpage.aspx.cs" Inherits="GCIntranetTheme.splashpage" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderLogo">
    <object type="image/svg+xml" tabindex="-1" role="img" data="/wet-v4/dist/theme-gc-intranet/assets/logo.svg" aria-label="Web Experience Toolkit"></object>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <section class="col-md-6">
    <h2 class="h3 text-center">Government of Canada Intranet theme - Web Experience Toolkit</h2>
    <ul class="list-unstyled">
    <li><a class="btn btn-lg btn-primary btn-block" href="../index-en.html">English</a></li>
    <li><a class="btn btn-lg btn-default btn-block mrgn-tp-sm" href="../../License-en.html" rel="license">Terms and conditions of use</a></li>
    </ul>
    </section>
    <section class="col-md-6" lang="fr">
    <h2 class="h3 text-center">Thème du gouvernement du Canada pour les sites intranet - Boîte à outils de l’expérience Web</h2>
    <ul class="list-unstyled">
    <li><a class="btn btn-lg btn-primary btn-block" href="../index-fr.html">Français</a></li>
    <li><a class="btn btn-lg btn-default btn-block mrgn-tp-sm" href="../../Licence-fr.html" rel="license">Conditions régissant l'utilisation</a></li>
    </ul>
    </section>
</asp:Content>