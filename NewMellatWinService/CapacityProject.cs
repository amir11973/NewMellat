//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewMellatWinService
{
    using System;
    using System.Collections.Generic;
    
    public partial class CapacityProject
    {
        public int ID { get; set; }
        public int CompanyId { get; set; }
        public Nullable<int> Year { get; set; }
        public int Season { get; set; }
        public Nullable<int> ProjectId { get; set; }
        public Nullable<int> Days { get; set; }
        public Nullable<bool> HasContract { get; set; }
        public Nullable<int> CapacityTypeId { get; set; }
    }
}
