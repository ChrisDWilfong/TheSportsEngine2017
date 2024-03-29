﻿using System;
using System.Collections.Generic;
using System.Text;

namespace aspnetforum.Utils.openid.Extensions.SimpleRegistration {
	/// <summary>
	/// Simple Registration constants
	/// </summary>
	internal static class Constants {
		internal const string sreg_ns = "http://openid.net/extensions/sreg/1.1";
		internal const string sreg_ns10 = "http://openid.net/sreg/1.0";
		internal const string sreg_ns11other = "http://openid.net/sreg/1.1";
		internal const string sreg_compatibility_alias = "sreg";
		internal const string policy_url = "policy_url";
		internal const string optional = "optional";
		internal const string required = "required";
		internal const string nickname = "nickname";
		internal const string email = "email";
		internal const string fullname = "fullname";
		internal const string dob = "dob";
		internal const string gender = "gender";
		internal const string postcode = "postcode";
		internal const string country = "country";
		internal const string language = "language";
		internal const string timezone = "timezone";
		internal static class Genders {
			internal const string Male = "M";
			internal const string Female = "F";
		}
	}
}
