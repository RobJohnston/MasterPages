using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCWeb
{
    public partial class Wet_Boew : Wet_BoewMasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        #region Public Properties
        public string ThreeLetterLangName
        {
            get { return Thread.CurrentThread.CurrentUICulture.ThreeLetterISOLanguageName; }
        }

        public string TwoLetterLangName
        {
            get { return Thread.CurrentThread.CurrentUICulture.TwoLetterISOLanguageName; }
        } 
        #endregion
    }
}