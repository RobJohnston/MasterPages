# WET-BOEW Master Pages

The intention of the projects in this solution is to create master pages that can be re-used across all other web form projects that use master pages.

The projects are:
* GCIntranetTheme - Master pages for the Government of Canada Intranet theme - http://wet-boew.github.io/themes-dist/theme-gc-intranet/index-en.html
* GCWebTheme - Master pages for the Canada.ca theme - http://wet-boew.github.io/themes-dist/GCWeb/index-en.html
* GCWebUsabilityTheme - Master pages for the Government of Canada Web Usability Theme - http://wet-boew.github.io/themes-dist/theme-gcwu-fegc/docs/ref/theme-gcwu-fegc/theme-gcwu-fegc-en.html


## Configuration

There is a custom configuration section in the root web.config file that is mostly fleshed-out now and working well.  
This section allows one to specify such things as the languages of the site, whether to hide certain things (search, breadcrumb, menu)
if appropriate for the theme, or whether to show the secondary left-side menu.

Also in the web.config file, one can set the default master page and define sitemap providers.  There are 3 sitemaps in use:
* Web.sitemap - controls the breadcrumb trail and the secondary left-side menu (when used by the appropriate master page).
* Header.sitemap - controls the top horizontal menu before the full menu is AJAX-ed in.
* Footer.sitemap - controls the vertical list of links in the footer.  For the Canada.ca theme, only the first part is configurable.

Sub-directories may also have a web.config file that overrides the root directory's file.


## Structure of projects

Each project has a top-level master page called Wet-Boew.Master.  This page is virtually the same for all projects 
(except the Canada.ca theme, but a recent pull request may fix that). 

It is the nested master pages (e.g., GCWeb.master or GCIntranet.master) that content pages are expected to use and 
each content page must inherit from BasePage instead of System.Web.UI.Page.

Each project has a directory named "Controls" that contain user controls shared across master pages within the project.  
In some cases, the controls are identical across projects but in many cases they differ slightly.


## How to use with other projects

Master pages are just another type of user control and can be shared as such.  There are a few possibilities that still have to be worked-out. See:
* Sharing Master Pages in Visual Studio - https://msdn.microsoft.com/en-us/library/aa992039(v=vs.100).aspx
* Building Re-Usable ASP.NET User Control and Page Libraries with Visual Studio 2005 - https://msdn.microsoft.com/en-us/library/aa479564.aspx
* Part 2 of 3: Creating shared user controls and master pages with sub-projects - http://blogs.msdn.com/b/webdev/archive/2006/08/15/701642.aspx
* Part 3 of 3: Creating sub-projects using the Visual Studio Development Server and Web Application Projects - http://blogs.msdn.com/b/webdev/archive/2006/11/27/part-3-of-3-creating-sub-projects-with-web-applicaiton-projects-and-built-in-asp-net-development-server.aspx
* Evolving Custom Controls - https://msdn.microsoft.com/en-us/library/aa478969.aspx

The simplest solution may be to make all other projects sub-projects of a master page project and have the source control structure mirror the web server's structure.
For using a large and complex codebase with Team Foundation Version Control, see "Optimize your workspace" - https://msdn.microsoft.com/en-us/library/ms181378.aspx


## Using the item template

1.  Find where the user defined templates are located (typically \\Homedir2\Data6\<username.\Documents\Visual Studio 2013\Templates)
2.  Under the subdirectory "Visual C#", create the folder "web" if it doesn't already exist.  Then create "WET-BOEW" under that.
3.  Move the WETWebForm.zip file into the new "WET-BOEW" folder.
4.  Verify it works by adding a new item to a project.  Under "Web" there should be a WET-BOEW option that allows "WET WebForm" as an item choice.


## Known Issues

* Secondary menus support two levels in practice but only one level in the example templates.  This is still being discussed on GitHub.


## TODO

- [ ] Secondary menu should be able to handle two levels.
- [ ] Maybe add the WET folder as a configurable setting in the web.config file.
- [ ] Maybe put more of the Canada.ca theme's footer links into a sitemap (in case they change, it would be an easier fix)?
- [ ] Show SubSite user control when appropriate to do so (only for the GC Intranet theme).
- [ ] Search the code for "TODO" and "REVIEW" to see what items are outstanding.
- [ ] There may be more properties to add to BasePage (e.g., for metadata).  See http://dublincore.org/documents/dcmi-terms/.
- [ ] A few more nested master pages, especially for the Canada.ca theme, could be built as required (may need more custom controls).  See http://wet-boew.github.io/themes-dist/GCWeb/index-en.html.  Most, if not all, could be nested off of GCWeb.master.
