using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCWebTheme
{
    public partial class Wet_Boew : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        #region Public Properties

        public string TwoLetterLangName
        {
            //get { return Thread.CurrentThread.CurrentUICulture.TwoLetterISOLanguageName; }
            get { return ((BasePage)Page).Language; }
        } 
        #endregion
    }
}