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
    
    public partial class tbKhbregan
    {
        public tbKhbregan()
        {
            this.tbKhobreganMosavabs = new HashSet<tbKhobreganMosavab>();
        }
    
        public int khId { get; set; }
        public Nullable<int> khProject { get; set; }
        public Nullable<int> khAct { get; set; }
        public string khJalaseNumber { get; set; }
        public Nullable<System.DateTime> khJalaseDate { get; set; }
        public Nullable<int> khStatus { get; set; }
        public Nullable<int> khIsTarh { get; set; }
    
        public virtual tbProject tbProject { get; set; }
        public virtual ICollection<tbKhobreganMosavab> tbKhobreganMosavabs { get; set; }
    }
}