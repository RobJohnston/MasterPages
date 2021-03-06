﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCIntranetTheme
{
    public partial class Wet_Boew : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        #region Public Properties
        public string PageCreator
        {
            get { return ((BasePage)Page).Creator; }
        }

        public string PageIssued
        {
            get { return ((BasePage)Page).Issued; }
        }

        public string PageModified
        {
            get { return ((BasePage)Page).Modified; }
        }

        public string PageSubject
        {
            get { return ((BasePage)Page).Subject; }
        }

        public string TextDir
        {
            get
            {
                string textDirection = "ltr";

                //Read the text direction from the custom web.config section.
                WetBoewConfiguration config = (WetBoewConfiguration)System.Configuration.ConfigurationManager.GetSection("WetBoewGroup/WetBoew");

                if (config != null)
                {
                    textDirection = config.TextDirection;
                }

                return textDirection;
            }
        }

        public string ThreeLetterLangName
        {
            get { return Thread.CurrentThread.CurrentUICulture.ThreeLetterISOLanguageName; }
        }

        public string TwoLetterLangName
        {
            //get { return Thread.CurrentThread.CurrentUICulture.TwoLetterISOLanguageName; }
            get { return ((BasePage)Page).Language; }
        }
        #endregion
    }
}