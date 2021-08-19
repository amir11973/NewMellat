﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// This source code was auto-generated by Microsoft.VSDesigner, Version 4.0.30319.34014.
// 
#pragma warning disable 1591

namespace NewMellat.SsoService {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.Xml.Serialization;
    using System.ComponentModel;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="SsoClientWebServiceSoap", Namespace="http://tempuri.org/")]
    public partial class SsoClientWebService : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback GetUsernameByTicketOperationCompleted;
        
        private System.Threading.SendOrPostCallback CheckIsOnlineOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public SsoClientWebService() {
            this.Url = global::NewMellat.Properties.Settings.Default.NewMellat_SsoService_SsoClientWebService;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event GetUsernameByTicketCompletedEventHandler GetUsernameByTicketCompleted;
        
        /// <remarks/>
        public event CheckIsOnlineCompletedEventHandler CheckIsOnlineCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/GetUsernameByTicket", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string GetUsernameByTicket(string wsUsername, string wsPassword, string ticket) {
            object[] results = this.Invoke("GetUsernameByTicket", new object[] {
                        wsUsername,
                        wsPassword,
                        ticket});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void GetUsernameByTicketAsync(string wsUsername, string wsPassword, string ticket) {
            this.GetUsernameByTicketAsync(wsUsername, wsPassword, ticket, null);
        }
        
        /// <remarks/>
        public void GetUsernameByTicketAsync(string wsUsername, string wsPassword, string ticket, object userState) {
            if ((this.GetUsernameByTicketOperationCompleted == null)) {
                this.GetUsernameByTicketOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetUsernameByTicketOperationCompleted);
            }
            this.InvokeAsync("GetUsernameByTicket", new object[] {
                        wsUsername,
                        wsPassword,
                        ticket}, this.GetUsernameByTicketOperationCompleted, userState);
        }
        
        private void OnGetUsernameByTicketOperationCompleted(object arg) {
            if ((this.GetUsernameByTicketCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetUsernameByTicketCompleted(this, new GetUsernameByTicketCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/CheckIsOnline", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool CheckIsOnline(string wsUsername, string wsPassword, string Username) {
            object[] results = this.Invoke("CheckIsOnline", new object[] {
                        wsUsername,
                        wsPassword,
                        Username});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void CheckIsOnlineAsync(string wsUsername, string wsPassword, string Username) {
            this.CheckIsOnlineAsync(wsUsername, wsPassword, Username, null);
        }
        
        /// <remarks/>
        public void CheckIsOnlineAsync(string wsUsername, string wsPassword, string Username, object userState) {
            if ((this.CheckIsOnlineOperationCompleted == null)) {
                this.CheckIsOnlineOperationCompleted = new System.Threading.SendOrPostCallback(this.OnCheckIsOnlineOperationCompleted);
            }
            this.InvokeAsync("CheckIsOnline", new object[] {
                        wsUsername,
                        wsPassword,
                        Username}, this.CheckIsOnlineOperationCompleted, userState);
        }
        
        private void OnCheckIsOnlineOperationCompleted(object arg) {
            if ((this.CheckIsOnlineCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CheckIsOnlineCompleted(this, new CheckIsOnlineCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void GetUsernameByTicketCompletedEventHandler(object sender, GetUsernameByTicketCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetUsernameByTicketCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetUsernameByTicketCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void CheckIsOnlineCompletedEventHandler(object sender, CheckIsOnlineCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CheckIsOnlineCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CheckIsOnlineCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591