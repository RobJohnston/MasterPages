﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace GCWebTheme
{
    public class WetBoewConfiguration : ConfigurationSection
    {
        internal static WetBoewConfiguration GetConfiguration()
        {
            //Configuration configuration = ConfigurationManager.GetSection("WetBoewGroup/WetBoew") as Configuration;
            WetBoewConfiguration configuration = (WetBoewConfiguration)System.Configuration.ConfigurationManager.GetSection("WetBoewGroup/WetBoew");
            if (configuration != null)
                return configuration;

            return new WetBoewConfiguration();
        }

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