/* rest.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Rest", lower_case_cprefix = "rest_")]
namespace Rest {
	[CCode (cheader_filename = "rest/facebook-proxy.h")]
	public class FacebookProxy : Rest.Proxy {
		[CCode (cname = "facebook_proxy_new", type = "RestProxy*", has_construct_function = false)]
		public FacebookProxy (string api_key, string app_secret);
		[CCode (cname = "facebook_proxy_build_login_url")]
		public static unowned string build_login_url (Rest.FacebookProxy proxy, string frob);
		[CCode (cname = "facebook_proxy_build_permission_url")]
		public static unowned string build_permission_url (Rest.FacebookProxy proxy, string perms);
		[CCode (cname = "facebook_proxy_get_api_key")]
		public static unowned string get_api_key (Rest.FacebookProxy proxy);
		[CCode (cname = "facebook_proxy_get_app_secret")]
		public static unowned string get_app_secret (Rest.FacebookProxy proxy);
		[CCode (cname = "facebook_proxy_get_session_key")]
		public static unowned string get_session_key (Rest.FacebookProxy proxy);
		[CCode (cname = "facebook_proxy_set_app_secret")]
		public static void set_app_secret (Rest.FacebookProxy proxy, string secret);
		[CCode (cname = "facebook_proxy_set_session_key")]
		public static void set_session_key (Rest.FacebookProxy proxy, string session_key);
		[CCode (cname = "facebook_proxy_sign")]
		public static unowned string sign (Rest.FacebookProxy proxy, GLib.HashTable @params);
		[CCode (cname = "facebook_proxy_new_with_session", type = "RestProxy*", has_construct_function = false)]
		public FacebookProxy.with_session (string api_key, string app_secret, string session_key);
		public string api_key { get; construct; }
		public string app_secret { get; set construct; }
		public string session_key { get; set; }
	}
	[CCode (cheader_filename = "rest/facebook-proxy-call.h")]
	public class FacebookProxyCall : Rest.ProxyCall {
	}
	[CCode (cheader_filename = "rest/flickr-proxy.h")]
	public class FlickrProxy : Rest.Proxy {
		[CCode (cname = "flickr_proxy_new", type = "RestProxy*", has_construct_function = false)]
		public FlickrProxy (string api_key, string shared_secret);
		[CCode (cname = "flickr_proxy_build_login_url")]
		public static unowned string build_login_url (Rest.FlickrProxy proxy, string frob);
		[CCode (cname = "flickr_proxy_get_api_key")]
		public static unowned string get_api_key (Rest.FlickrProxy proxy);
		[CCode (cname = "flickr_proxy_get_shared_secret")]
		public static unowned string get_shared_secret (Rest.FlickrProxy proxy);
		[CCode (cname = "flickr_proxy_get_token")]
		public static unowned string get_token (Rest.FlickrProxy proxy);
		[CCode (cname = "flickr_proxy_set_token")]
		public static void set_token (Rest.FlickrProxy proxy, string token);
		[CCode (cname = "flickr_proxy_sign")]
		public static unowned string sign (Rest.FlickrProxy proxy, GLib.HashTable @params);
		[CCode (cname = "flickr_proxy_new_with_token", type = "RestProxy*", has_construct_function = false)]
		public FlickrProxy.with_token (string api_key, string shared_secret, string token);
		public string api_key { get; construct; }
		public string shared_secret { get; construct; }
		public string token { get; set; }
	}
	[CCode (cheader_filename = "rest/flickr-proxy-call.h")]
	public class FlickrProxyCall : Rest.ProxyCall {
	}
	[CCode (cheader_filename = "rest/oauth-proxy.h")]
	public class OAuthProxy : Rest.Proxy {
		[CCode (cname = "oauth_proxy_new", type = "RestProxy*", has_construct_function = false)]
		public OAuthProxy (string consumer_key, string consumer_secret, string url_format, bool binding_required);
		[CCode (cname = "oauth_proxy_auth_step")]
		public static bool auth_step (Rest.OAuthProxy proxy, string function) throws GLib.Error;
		[CCode (cname = "oauth_proxy_auth_step_async")]
		public static bool auth_step_async (Rest.OAuthProxy proxy, string function, Rest.OAuthProxyAuthCallback callback, GLib.Object weak_object) throws GLib.Error;
		[CCode (cname = "oauth_proxy_get_token")]
		public static unowned string get_token (Rest.OAuthProxy proxy);
		[CCode (cname = "oauth_proxy_get_token_secret")]
		public static unowned string get_token_secret (Rest.OAuthProxy proxy);
		[CCode (cname = "oauth_proxy_set_token")]
		public static void set_token (Rest.OAuthProxy proxy, string token);
		[CCode (cname = "oauth_proxy_set_token_secret")]
		public static void set_token_secret (Rest.OAuthProxy proxy, string token_secret);
		[CCode (cname = "oauth_proxy_new_with_token", type = "RestProxy*", has_construct_function = false)]
		public OAuthProxy.with_token (string consumer_key, string consumer_secret, string token, string token_secret, string url_format, bool binding_required);
		[NoAccessorMethod]
		public string consumer_key { owned get; construct; }
		[NoAccessorMethod]
		public string consumer_secret { owned get; construct; }
		public string token { get; set; }
		public string token_secret { get; set; }
	}
	[CCode (cheader_filename = "rest/oauth-proxy-call.h")]
	public class OAuthProxyCall : Rest.ProxyCall {
	}
	[CCode (cheader_filename = "rest/rest-proxy.h")]
	public class Proxy : GLib.Object {
		[CCode (has_construct_function = false)]
		public Proxy (string url_format, bool binding_required);
		public bool bind (...);
		public virtual bool bind_valist (void* @params);
		public static GLib.Quark error_quark ();
		public unowned string get_user_agent ();
		public void set_user_agent (string user_agent);
		public bool simple_run (string payload, int64 len) throws GLib.Error;
		public virtual bool simple_run_valist (string payload, int64 len, void* @params) throws GLib.Error;
		[NoAccessorMethod]
		public bool binding_required { get; set; }
		[NoAccessorMethod]
		public string url_format { owned get; set; }
		public string user_agent { get; set; }
	}
	[CCode (cheader_filename = "rest/rest-proxy-call.h")]
	public class ProxyCall : GLib.Object {
		public void add_header (string header, string value);
		public void add_headers (...);
		public void add_headers_from_valist (void* headers);
		public void add_param (string param, string value);
		public void add_params (...);
		public void add_params_from_valist (void* @params);
		public bool cancel () throws GLib.Error;
		public static GLib.Quark error_quark ();
		public unowned string get_method ();
		public unowned GLib.HashTable<string,string> get_params ();
		public unowned string get_payload ();
		public int64 get_payload_length ();
		public unowned GLib.HashTable get_response_headers ();
		public uint get_status_code ();
		public unowned string get_status_message ();
		public unowned string lookup_header (string header);
		public unowned string lookup_param (string param);
		public unowned string lookup_response_header (string header);
		[NoWrapper]
		public virtual bool prepare () throws GLib.Error;
		public void remove_header (string header);
		public void remove_param (string param);
		public bool run (out unowned GLib.MainLoop loop) throws GLib.Error;
		[CCode (cname = "rest_proxy_call_async")]
		public bool run_async (Rest.ProxyCallAsyncCallback callback, GLib.Object weak_object) throws GLib.Error;
		public void set_function (string function);
		public void set_method (string method);
		public bool sync () throws GLib.Error;
		[NoAccessorMethod]
		public Rest.Proxy proxy { owned get; construct; }
	}
	[Compact]
	[CCode (ref_function = "rest_xml_node_ref", unref_function = "rest_xml_node_unref", type_id = "REST_TYPE_XML_NODE", cheader_filename = "rest/rest-xml-parser.h")]
	public class XmlNode {
		public weak GLib.HashTable attrs;
		public weak GLib.HashTable children;
		public weak string content;
		public weak string name;
		public weak Rest.XmlNode next;
		public int ref_count;
		public unowned Rest.XmlNode find (string tag);
		public unowned string get_attr (string attr_name);
	}
	[CCode (cheader_filename = "rest/rest-xml-parser.h")]
	public class XmlParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public XmlParser ();
		public unowned Rest.XmlNode parse_from_data (string data, int64 len);
	}
	[CCode (cprefix = "", has_type_id = "0", cheader_filename = "rest/oauth-proxy.h")]
	public enum OAuthSignatureMethod {
		PLAINTEXT,
		HMAC_SHA1
	}
	[CCode (cprefix = "REST_PROXY_CALL_", cheader_filename = "rest/rest-proxy-call.h")]
	public errordomain ProxyCallError {
		FAILED,
	}
	[CCode (cprefix = "REST_PROXY_ERROR_", cheader_filename = "rest/rest-proxy.h")]
	public errordomain ProxyError {
		CANCELLED,
		RESOLUTION,
		CONNECTION,
		SSL,
		IO,
		FAILED,
		HTTP_MULTIPLE_CHOICES,
		HTTP_MOVED_PERMANENTLY,
		HTTP_FOUND,
		HTTP_SEE_OTHER,
		HTTP_NOT_MODIFIED,
		HTTP_USE_PROXY,
		HTTP_THREEOHSIX,
		HTTP_TEMPORARY_REDIRECT,
		HTTP_BAD_REQUEST,
		HTTP_UNAUTHORIZED,
		HTTP_FOUROHTWO,
		HTTP_FORBIDDEN,
		HTTP_NOT_FOUND,
		HTTP_METHOD_NOT_ALLOWED,
		HTTP_NOT_ACCEPTABLE,
		HTTP_PROXY_AUTHENTICATION_REQUIRED,
		HTTP_REQUEST_TIMEOUT,
		HTTP_CONFLICT,
		HTTP_GONE,
		HTTP_LENGTH_REQUIRED,
		HTTP_PRECONDITION_FAILED,
		HTTP_REQUEST_ENTITY_TOO_LARGE,
		HTTP_REQUEST_URI_TOO_LONG,
		HTTP_UNSUPPORTED_MEDIA_TYPE,
		HTTP_REQUESTED_RANGE_NOT_SATISFIABLE,
		HTTP_EXPECTATION_FAILED,
		HTTP_INTERNAL_SERVER_ERROR,
		HTTP_NOT_IMPLEMENTED,
		HTTP_BAD_GATEWAY,
		HTTP_SERVICE_UNAVAILABLE,
		HTTP_GATEWAY_TIMEOUT,
		HTTP_HTTP_VERSION_NOT_SUPPORTED,
	}
	[CCode (cheader_filename = "rest/oauth-proxy.h")]
	public delegate void OAuthProxyAuthCallback (Rest.OAuthProxy proxy, GLib.Error error, GLib.Object weak_object);
	[CCode (cheader_filename = "rest/rest-proxy-call.h")]
	public delegate void ProxyCallAsyncCallback (Rest.ProxyCall call, GLib.Error error, GLib.Object weak_object);
}
