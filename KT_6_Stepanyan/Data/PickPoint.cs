//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KT_6_Stepanyan.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class PickPoint
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PickPoint()
        {
            this.OrderProduct = new HashSet<OrderProduct>();
        }
    
        public int Id { get; set; }
        public int IdAdress { get; set; }
        public int IdTown { get; set; }
        public int IdStreet { get; set; }
        public Nullable<int> House { get; set; }
    
        public virtual IdAdress IdAdress1 { get; set; }
        public virtual IdStreet IdStreet1 { get; set; }
        public virtual IdTown IdTown1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderProduct> OrderProduct { get; set; }
    }
}
