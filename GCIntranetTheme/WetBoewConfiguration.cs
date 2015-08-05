using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace GCIntranetTheme
{
    public class WetBoewConfiguration : ConfigurationSection
    {
        //Create a "defaultLanguage" attribute.
        [ConfigurationProperty("defaultLanguage", DefaultValue = "en", IsRequired = false)]
        [StringValidator(MinLength = 2, MaxLength = 2)]
        public string DefaultLanguage
        {
            get
            {
                return (string)this["defaultLanguage"];
            }
            set
            {
                this["defaultLanguage"] = value;
            }
        }

        //Create a "homePage" attribute.
        [ConfigurationProperty("homePage", DefaultValue = "~/default.aspx", IsRequired = false)]
        public string HomePage
        {
            get
            {
                return (string)this["homePage"];
            }
            set
            {
                this["homePage"] = value;
            }
        }

        //Create a "siteName" attribute.
        [ConfigurationProperty("siteName", DefaultValue = "Web Experience Toolkit", IsRequired = false)]
        public string SiteName
        {
            get
            {
                return (string)this["siteName"];
            }
            set
            {
                this["siteName"] = value;
            }
        }

        //Create a "textDirection" attribute.
        [ConfigurationProperty("textDirection", DefaultValue = "ltr", IsRequired = false)]
        public string TextDirection
        {
            get
            {
                return (string)this["textDirection"];
            }
            set
            {
                this["textDirection"] = value;
            }
        }
    }
}