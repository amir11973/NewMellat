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
    
    public partial class tbAdminPremission
    {
        public tbAdminPremission()
        {
            this.tbAminPremissionAccesses = new HashSet<tbAminPremissionAccess>();
        }
    
        public int prId { get; set; }
        public string prName { get; set; }
        public Nullable<int> prAct { get; set; }
    
        public virtual ICollection<tbAminPremissionAccess> tbAminPremissionAccesses { get; set; }
    }
}