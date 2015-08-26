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
        /// <summary>
        /// An entity primarily responsible for making the resource.
        /// </summary>
        public virtual string Creator
        {
            get
            {
                string str = ViewState["PageCreator"] as string;
                if (str == null)
                {
                    //REVIEW:  Edit as appropriate.
                    if (this.Language == "fr")
                    {
                        return "Gouvernement du Canada, Citoyenneté et Immigration Canada";
                    }
                    else
                    {
                        return "Government of Canada, Citizenship and Immigration Canada";
                    }
                }
                else
                {
                    return str;
                }
            }
            set
            {
                ViewState["PageCreator"] = value;
            }
        }

        /// <summary>
        /// Date of creation of the resource.
        /// </summary>
        public virtual string Created
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

        /// <summary>
        /// Date on which the resource was changed.
        /// </summary>
        public virtual string Modified
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

        /// <summary>
        /// Date of formal issuance (e.g., publication) of the resource.
        /// </summary>
        /// <remarks>
        /// Defaults to Date Created.
        /// </remarks>
        public virtual string Issued
        {
            get
            {
                string str = ViewState["PageDateIssued"] as string;
                if (str == null)
                {
                    return this.Created;
                }
                else
                {
                    return str;
                }
            }
            set
            {
                ViewState["PageDateIssued"] = value;
            }
        }

        /// <summary>
        /// A language of the resource.
        /// </summary>
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

        /// <summary>
        /// Should the left-side secondary menu be shown?
        /// </summary>
        public virtual bool ShowSectionMenu
        {
            get
            {
                string str = ViewState["ShowSectionMenu"] as string;
                if (str == null)
                {
                    WetBoewConfiguration config = WetBoewConfiguration.GetConfiguration();
                    return config.ShowSectionMenu;
                }
                else
                {
                    return bool.Parse(str);
                }
            }
            set
            {
                ViewState["ShowSectionMenu"] = value.ToString();
            }
        }

        /// <summary>
        /// The topic of the resource.
        /// </summary>
        public virtual string Subject
        {
            get
            {
                string str = ViewState["PageSubject"] as string;
                if (str == null)
                {
                    //REVIEW:  Edit as appropriate.
                    if (this.Language == "fr")
                    {
                        return "Citoyenneté; Immigration; Multiculturalisme";
                    }
                    else
                    {
                        return "Citizenship; Immigration; Multiculturalism";
                    }
                }
                else
                {
                    return str;
                }
            }
            set
            {
                ViewState["PageSubject"] = value;
            }
        }
        #endregion
    }
}