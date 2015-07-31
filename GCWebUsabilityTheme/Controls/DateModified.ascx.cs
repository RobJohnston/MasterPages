using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCWebUsability.Controls
{
    public partial class DateModified : System.Web.UI.UserControl
    {
        private string _pageModifiedDate;

        protected void Page_Load(object sender, EventArgs e)
        {
            GetDateModified();
        }

        public string PageModified
        {
            get { return _pageModifiedDate; }
            set { _pageModifiedDate = value; }
        }

        /// <summary>
        /// Get the modification date of the content page (not the master page).
        /// </summary>
        private void GetDateModified()
        {
            if (_pageModifiedDate == null)
            {
                System.IO.FileInfo objInfo = new System.IO.FileInfo(Server.MapPath(Request.ServerVariables.Get("SCRIPT_NAME")));
                string strDate = null;

                strDate = String.Format("{0:yyyy-MM-dd}", objInfo.LastWriteTime.Date);
                _pageModifiedDate = strDate;
            }
        }
    }
}