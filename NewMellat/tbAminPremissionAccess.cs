//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewMellat
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbAminPremissionAccess
    {
        public int acId { get; set; }
        public Nullable<int> acPremission { get; set; }
        public string acPage { get; set; }
        public Nullable<int> acAct { get; set; }
        public string acCode { get; set; }
    
        public virtual tbAdminPremission tbAdminPremission { get; set; }
    }
}
