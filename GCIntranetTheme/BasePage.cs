using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;

namespace GCIntranetTheme
{
    public class BasePage : System.Web.UI.Page
    {
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
    }
}