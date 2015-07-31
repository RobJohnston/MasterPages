using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;

namespace GCWebTheme
{
    public class BasePage : System.Web.UI.Page
    {
        #region Overridden Page Events
        protected override void InitializeCulture()
        {
            string userCulture = null;
            string pattern = "^\\S+-(\\S+).aspx\\S*$";
            Match m = default(Match);

            m = Regex.Match(Request.RawUrl, pattern, RegexOptions.IgnoreCase);

            //Given an arbitrary page such as "/SomeDir/SomePage-fra.aspx?id=123",
            //the above pattern should find 1 group: "fra".

            if (m.Success)
            {
                switch (m.Groups[1].Value)
                {
                    case "fr":
                    case "fra":
                        userCulture = "fr-ca";
                        break;
                    default:
                        userCulture = "en-ca";
                        break;
                }

                Thread.CurrentThread.CurrentUICulture = new CultureInfo(userCulture);
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(userCulture);
            }
        }
        #endregion

        #region Public properties
        public virtual string DateCreated
        {
            get
            {
                string str = ViewState["PageDateCreated"] as string;
                if (str == null)
                {
                    System.IO.FileInfo objInfo = new System.IO.FileInfo(Server.MapPath(Request.ServerVariables.Get("SCRIPT_NAME")));
                    return String.Format("{0:yyyy-MM-dd}", objInfo.CreationTime.Date);
                }
                else
                    return str;
            }
            set
            {
                ViewState["PageDateCreated"] = value;
            }
        }

        public virtual string DateModified
        {
            get
            {
                string str = ViewState["PageDateModified"] as string;
                if (str == null) 
                {
                    System.IO.FileInfo objInfo = new System.IO.FileInfo(Server.MapPath(Request.ServerVariables.Get("SCRIPT_NAME")));
                    return String.Format("{0:yyyy-MM-dd}", objInfo.LastWriteTime.Date);
                }                    
                else
                    return str;
            }
            set
            {
                ViewState["PageDateModified"] = value;
            }
        }

        public virtual string Language
        {
            get
            {
                string str = ViewState["PageLanguage"] as string;
                if (str == null)
                {
                    string rawUrl = Request.RawUrl;

                    if (rawUrl.Contains("-fr.") || rawUrl.Contains("-fra."))
                    {
                        return "fr";
                    }
                    else
                    {
                        return "en";
                    }
                }
                else
                    return str;
            }
            set
            {
                ViewState["PageLanguage"] = value;
            }
        }
        #endregion

    }
}