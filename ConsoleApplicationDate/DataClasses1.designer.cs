﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConsoleApplicationDate
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="NewMellat")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertDimDate(DimDate instance);
    partial void UpdateDimDate(DimDate instance);
    partial void DeleteDimDate(DimDate instance);
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::ConsoleApplicationDate.Properties.Settings.Default.NewMellatConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<DimDate> DimDates
		{
			get
			{
				return this.GetTable<DimDate>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DimDate")]
	public partial class DimDate : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _DateKey;
		
		private string _GregorianDate;
		
		private System.Nullable<short> _GregorianYearInt;
		
		private System.Nullable<byte> _GregorianMonthNo;
		
		private System.Nullable<byte> _GregorianDayInMonth;
		
		private System.Nullable<short> _GregorianMonthDayInt;
		
		private System.Nullable<byte> _GregorianDayOfWeekInt;
		
		private string _GregorianMonthName;
		
		private string _GregorianStr;
		
		private System.Nullable<int> _GregorianYearMonthInt;
		
		private string _GregorianYearMonthStr;
		
		private string _GregorianDayOfWeekName;
		
		private string _GrgorianWeekOfYearName;
		
		private System.Nullable<int> _GregorianWeekOfYearNo;
		
		private System.Nullable<int> _PersianInt;
		
		private System.Nullable<short> _PersianYearInt;
		
		private System.Nullable<byte> _PersianMonthNo;
		
		private System.Nullable<byte> _PersianDayInMonth;
		
		private System.Nullable<short> _PersianMonthDayInt;
		
		private System.Nullable<byte> _PersianDayOfWeekInt;
		
		private string _PersianMonthName;
		
		private string _PersianStr;
		
		private System.Nullable<int> _PersianYearMonthInt;
		
		private string _PersianYearMonthStr;
		
		private string _PersianDayOfWeekName;
		
		private string _PersianWeekOfYearName;
		
		private System.Nullable<int> _PersianWeekOfYearNo;
		
		private string _PersianFullName;
		
		private System.Nullable<int> _HijriInt;
		
		private System.Nullable<short> _HijriYearInt;
		
		private System.Nullable<byte> _HijriMonthNo;
		
		private System.Nullable<byte> _HijriDayInMonth;
		
		private System.Nullable<short> _HijriMonthDayInt;
		
		private System.Nullable<byte> _HijriDayOfWeekInt;
		
		private string _HijriMonthName;
		
		private string _HijriStr;
		
		private System.Nullable<int> _HijriYearMonthInt;
		
		private string _HijriYearMonthStr;
		
		private string _HijriDayOfWeekName;
		
		private string _HijriWeekOfYearName;
		
		private System.Nullable<int> _HijriWeekOfYearNo;
		
		private System.Nullable<byte> _SeasonCode;
		
		private string _SeasonName;
		
		private System.Nullable<short> _IsGregorianLeap;
		
		private System.Nullable<short> _IsPersianLeap;
		
		private System.Nullable<short> _IsOneDayBefore_PersianHoliday;
		
		private System.Nullable<short> _IsOneDayBefore_HijriHoliday;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnDateKeyChanging(int value);
    partial void OnDateKeyChanged();
    partial void OnGregorianDateChanging(string value);
    partial void OnGregorianDateChanged();
    partial void OnGregorianYearIntChanging(System.Nullable<short> value);
    partial void OnGregorianYearIntChanged();
    partial void OnGregorianMonthNoChanging(System.Nullable<byte> value);
    partial void OnGregorianMonthNoChanged();
    partial void OnGregorianDayInMonthChanging(System.Nullable<byte> value);
    partial void OnGregorianDayInMonthChanged();
    partial void OnGregorianMonthDayIntChanging(System.Nullable<short> value);
    partial void OnGregorianMonthDayIntChanged();
    partial void OnGregorianDayOfWeekIntChanging(System.Nullable<byte> value);
    partial void OnGregorianDayOfWeekIntChanged();
    partial void OnGregorianMonthNameChanging(string value);
    partial void OnGregorianMonthNameChanged();
    partial void OnGregorianStrChanging(string value);
    partial void OnGregorianStrChanged();
    partial void OnGregorianYearMonthIntChanging(System.Nullable<int> value);
    partial void OnGregorianYearMonthIntChanged();
    partial void OnGregorianYearMonthStrChanging(string value);
    partial void OnGregorianYearMonthStrChanged();
    partial void OnGregorianDayOfWeekNameChanging(string value);
    partial void OnGregorianDayOfWeekNameChanged();
    partial void OnGrgorianWeekOfYearNameChanging(string value);
    partial void OnGrgorianWeekOfYearNameChanged();
    partial void OnGregorianWeekOfYearNoChanging(System.Nullable<int> value);
    partial void OnGregorianWeekOfYearNoChanged();
    partial void OnPersianIntChanging(System.Nullable<int> value);
    partial void OnPersianIntChanged();
    partial void OnPersianYearIntChanging(System.Nullable<short> value);
    partial void OnPersianYearIntChanged();
    partial void OnPersianMonthNoChanging(System.Nullable<byte> value);
    partial void OnPersianMonthNoChanged();
    partial void OnPersianDayInMonthChanging(System.Nullable<byte> value);
    partial void OnPersianDayInMonthChanged();
    partial void OnPersianMonthDayIntChanging(System.Nullable<short> value);
    partial void OnPersianMonthDayIntChanged();
    partial void OnPersianDayOfWeekIntChanging(System.Nullable<byte> value);
    partial void OnPersianDayOfWeekIntChanged();
    partial void OnPersianMonthNameChanging(string value);
    partial void OnPersianMonthNameChanged();
    partial void OnPersianStrChanging(string value);
    partial void OnPersianStrChanged();
    partial void OnPersianYearMonthIntChanging(System.Nullable<int> value);
    partial void OnPersianYearMonthIntChanged();
    partial void OnPersianYearMonthStrChanging(string value);
    partial void OnPersianYearMonthStrChanged();
    partial void OnPersianDayOfWeekNameChanging(string value);
    partial void OnPersianDayOfWeekNameChanged();
    partial void OnPersianWeekOfYearNameChanging(string value);
    partial void OnPersianWeekOfYearNameChanged();
    partial void OnPersianWeekOfYearNoChanging(System.Nullable<int> value);
    partial void OnPersianWeekOfYearNoChanged();
    partial void OnPersianFullNameChanging(string value);
    partial void OnPersianFullNameChanged();
    partial void OnHijriIntChanging(System.Nullable<int> value);
    partial void OnHijriIntChanged();
    partial void OnHijriYearIntChanging(System.Nullable<short> value);
    partial void OnHijriYearIntChanged();
    partial void OnHijriMonthNoChanging(System.Nullable<byte> value);
    partial void OnHijriMonthNoChanged();
    partial void OnHijriDayInMonthChanging(System.Nullable<byte> value);
    partial void OnHijriDayInMonthChanged();
    partial void OnHijriMonthDayIntChanging(System.Nullable<short> value);
    partial void OnHijriMonthDayIntChanged();
    partial void OnHijriDayOfWeekIntChanging(System.Nullable<byte> value);
    partial void OnHijriDayOfWeekIntChanged();
    partial void OnHijriMonthNameChanging(string value);
    partial void OnHijriMonthNameChanged();
    partial void OnHijriStrChanging(string value);
    partial void OnHijriStrChanged();
    partial void OnHijriYearMonthIntChanging(System.Nullable<int> value);
    partial void OnHijriYearMonthIntChanged();
    partial void OnHijriYearMonthStrChanging(string value);
    partial void OnHijriYearMonthStrChanged();
    partial void OnHijriDayOfWeekNameChanging(string value);
    partial void OnHijriDayOfWeekNameChanged();
    partial void OnHijriWeekOfYearNameChanging(string value);
    partial void OnHijriWeekOfYearNameChanged();
    partial void OnHijriWeekOfYearNoChanging(System.Nullable<int> value);
    partial void OnHijriWeekOfYearNoChanged();
    partial void OnSeasonCodeChanging(System.Nullable<byte> value);
    partial void OnSeasonCodeChanged();
    partial void OnSeasonNameChanging(string value);
    partial void OnSeasonNameChanged();
    partial void OnIsGregorianLeapChanging(System.Nullable<short> value);
    partial void OnIsGregorianLeapChanged();
    partial void OnIsPersianLeapChanging(System.Nullable<short> value);
    partial void OnIsPersianLeapChanged();
    partial void OnIsOneDayBefore_PersianHolidayChanging(System.Nullable<short> value);
    partial void OnIsOneDayBefore_PersianHolidayChanged();
    partial void OnIsOneDayBefore_HijriHolidayChanging(System.Nullable<short> value);
    partial void OnIsOneDayBefore_HijriHolidayChanged();
    #endregion
		
		public DimDate()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateKey", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int DateKey
		{
			get
			{
				return this._DateKey;
			}
			set
			{
				if ((this._DateKey != value))
				{
					this.OnDateKeyChanging(value);
					this.SendPropertyChanging();
					this._DateKey = value;
					this.SendPropertyChanged("DateKey");
					this.OnDateKeyChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianDate", DbType="NVarChar(10)")]
		public string GregorianDate
		{
			get
			{
				return this._GregorianDate;
			}
			set
			{
				if ((this._GregorianDate != value))
				{
					this.OnGregorianDateChanging(value);
					this.SendPropertyChanging();
					this._GregorianDate = value;
					this.SendPropertyChanged("GregorianDate");
					this.OnGregorianDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianYearInt", DbType="SmallInt")]
		public System.Nullable<short> GregorianYearInt
		{
			get
			{
				return this._GregorianYearInt;
			}
			set
			{
				if ((this._GregorianYearInt != value))
				{
					this.OnGregorianYearIntChanging(value);
					this.SendPropertyChanging();
					this._GregorianYearInt = value;
					this.SendPropertyChanged("GregorianYearInt");
					this.OnGregorianYearIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianMonthNo", DbType="TinyInt")]
		public System.Nullable<byte> GregorianMonthNo
		{
			get
			{
				return this._GregorianMonthNo;
			}
			set
			{
				if ((this._GregorianMonthNo != value))
				{
					this.OnGregorianMonthNoChanging(value);
					this.SendPropertyChanging();
					this._GregorianMonthNo = value;
					this.SendPropertyChanged("GregorianMonthNo");
					this.OnGregorianMonthNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianDayInMonth", DbType="TinyInt")]
		public System.Nullable<byte> GregorianDayInMonth
		{
			get
			{
				return this._GregorianDayInMonth;
			}
			set
			{
				if ((this._GregorianDayInMonth != value))
				{
					this.OnGregorianDayInMonthChanging(value);
					this.SendPropertyChanging();
					this._GregorianDayInMonth = value;
					this.SendPropertyChanged("GregorianDayInMonth");
					this.OnGregorianDayInMonthChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianMonthDayInt", DbType="SmallInt")]
		public System.Nullable<short> GregorianMonthDayInt
		{
			get
			{
				return this._GregorianMonthDayInt;
			}
			set
			{
				if ((this._GregorianMonthDayInt != value))
				{
					this.OnGregorianMonthDayIntChanging(value);
					this.SendPropertyChanging();
					this._GregorianMonthDayInt = value;
					this.SendPropertyChanged("GregorianMonthDayInt");
					this.OnGregorianMonthDayIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianDayOfWeekInt", DbType="TinyInt")]
		public System.Nullable<byte> GregorianDayOfWeekInt
		{
			get
			{
				return this._GregorianDayOfWeekInt;
			}
			set
			{
				if ((this._GregorianDayOfWeekInt != value))
				{
					this.OnGregorianDayOfWeekIntChanging(value);
					this.SendPropertyChanging();
					this._GregorianDayOfWeekInt = value;
					this.SendPropertyChanged("GregorianDayOfWeekInt");
					this.OnGregorianDayOfWeekIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianMonthName", DbType="NVarChar(MAX)")]
		public string GregorianMonthName
		{
			get
			{
				return this._GregorianMonthName;
			}
			set
			{
				if ((this._GregorianMonthName != value))
				{
					this.OnGregorianMonthNameChanging(value);
					this.SendPropertyChanging();
					this._GregorianMonthName = value;
					this.SendPropertyChanged("GregorianMonthName");
					this.OnGregorianMonthNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianStr", DbType="NVarChar(10)")]
		public string GregorianStr
		{
			get
			{
				return this._GregorianStr;
			}
			set
			{
				if ((this._GregorianStr != value))
				{
					this.OnGregorianStrChanging(value);
					this.SendPropertyChanging();
					this._GregorianStr = value;
					this.SendPropertyChanged("GregorianStr");
					this.OnGregorianStrChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianYearMonthInt", DbType="Int")]
		public System.Nullable<int> GregorianYearMonthInt
		{
			get
			{
				return this._GregorianYearMonthInt;
			}
			set
			{
				if ((this._GregorianYearMonthInt != value))
				{
					this.OnGregorianYearMonthIntChanging(value);
					this.SendPropertyChanging();
					this._GregorianYearMonthInt = value;
					this.SendPropertyChanged("GregorianYearMonthInt");
					this.OnGregorianYearMonthIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianYearMonthStr", DbType="NVarChar(7)")]
		public string GregorianYearMonthStr
		{
			get
			{
				return this._GregorianYearMonthStr;
			}
			set
			{
				if ((this._GregorianYearMonthStr != value))
				{
					this.OnGregorianYearMonthStrChanging(value);
					this.SendPropertyChanging();
					this._GregorianYearMonthStr = value;
					this.SendPropertyChanged("GregorianYearMonthStr");
					this.OnGregorianYearMonthStrChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianDayOfWeekName", DbType="NVarChar(MAX)")]
		public string GregorianDayOfWeekName
		{
			get
			{
				return this._GregorianDayOfWeekName;
			}
			set
			{
				if ((this._GregorianDayOfWeekName != value))
				{
					this.OnGregorianDayOfWeekNameChanging(value);
					this.SendPropertyChanging();
					this._GregorianDayOfWeekName = value;
					this.SendPropertyChanged("GregorianDayOfWeekName");
					this.OnGregorianDayOfWeekNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GrgorianWeekOfYearName", DbType="NVarChar(MAX)")]
		public string GrgorianWeekOfYearName
		{
			get
			{
				return this._GrgorianWeekOfYearName;
			}
			set
			{
				if ((this._GrgorianWeekOfYearName != value))
				{
					this.OnGrgorianWeekOfYearNameChanging(value);
					this.SendPropertyChanging();
					this._GrgorianWeekOfYearName = value;
					this.SendPropertyChanged("GrgorianWeekOfYearName");
					this.OnGrgorianWeekOfYearNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GregorianWeekOfYearNo", DbType="Int")]
		public System.Nullable<int> GregorianWeekOfYearNo
		{
			get
			{
				return this._GregorianWeekOfYearNo;
			}
			set
			{
				if ((this._GregorianWeekOfYearNo != value))
				{
					this.OnGregorianWeekOfYearNoChanging(value);
					this.SendPropertyChanging();
					this._GregorianWeekOfYearNo = value;
					this.SendPropertyChanged("GregorianWeekOfYearNo");
					this.OnGregorianWeekOfYearNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianInt", DbType="Int")]
		public System.Nullable<int> PersianInt
		{
			get
			{
				return this._PersianInt;
			}
			set
			{
				if ((this._PersianInt != value))
				{
					this.OnPersianIntChanging(value);
					this.SendPropertyChanging();
					this._PersianInt = value;
					this.SendPropertyChanged("PersianInt");
					this.OnPersianIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianYearInt", DbType="SmallInt")]
		public System.Nullable<short> PersianYearInt
		{
			get
			{
				return this._PersianYearInt;
			}
			set
			{
				if ((this._PersianYearInt != value))
				{
					this.OnPersianYearIntChanging(value);
					this.SendPropertyChanging();
					this._PersianYearInt = value;
					this.SendPropertyChanged("PersianYearInt");
					this.OnPersianYearIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianMonthNo", DbType="TinyInt")]
		public System.Nullable<byte> PersianMonthNo
		{
			get
			{
				return this._PersianMonthNo;
			}
			set
			{
				if ((this._PersianMonthNo != value))
				{
					this.OnPersianMonthNoChanging(value);
					this.SendPropertyChanging();
					this._PersianMonthNo = value;
					this.SendPropertyChanged("PersianMonthNo");
					this.OnPersianMonthNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianDayInMonth", DbType="TinyInt")]
		public System.Nullable<byte> PersianDayInMonth
		{
			get
			{
				return this._PersianDayInMonth;
			}
			set
			{
				if ((this._PersianDayInMonth != value))
				{
					this.OnPersianDayInMonthChanging(value);
					this.SendPropertyChanging();
					this._PersianDayInMonth = value;
					this.SendPropertyChanged("PersianDayInMonth");
					this.OnPersianDayInMonthChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianMonthDayInt", DbType="SmallInt")]
		public System.Nullable<short> PersianMonthDayInt
		{
			get
			{
				return this._PersianMonthDayInt;
			}
			set
			{
				if ((this._PersianMonthDayInt != value))
				{
					this.OnPersianMonthDayIntChanging(value);
					this.SendPropertyChanging();
					this._PersianMonthDayInt = value;
					this.SendPropertyChanged("PersianMonthDayInt");
					this.OnPersianMonthDayIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianDayOfWeekInt", DbType="TinyInt")]
		public System.Nullable<byte> PersianDayOfWeekInt
		{
			get
			{
				return this._PersianDayOfWeekInt;
			}
			set
			{
				if ((this._PersianDayOfWeekInt != value))
				{
					this.OnPersianDayOfWeekIntChanging(value);
					this.SendPropertyChanging();
					this._PersianDayOfWeekInt = value;
					this.SendPropertyChanged("PersianDayOfWeekInt");
					this.OnPersianDayOfWeekIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianMonthName", DbType="NVarChar(MAX)")]
		public string PersianMonthName
		{
			get
			{
				return this._PersianMonthName;
			}
			set
			{
				if ((this._PersianMonthName != value))
				{
					this.OnPersianMonthNameChanging(value);
					this.SendPropertyChanging();
					this._PersianMonthName = value;
					this.SendPropertyChanged("PersianMonthName");
					this.OnPersianMonthNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianStr", DbType="NVarChar(10)")]
		public string PersianStr
		{
			get
			{
				return this._PersianStr;
			}
			set
			{
				if ((this._PersianStr != value))
				{
					this.OnPersianStrChanging(value);
					this.SendPropertyChanging();
					this._PersianStr = value;
					this.SendPropertyChanged("PersianStr");
					this.OnPersianStrChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianYearMonthInt", DbType="Int")]
		public System.Nullable<int> PersianYearMonthInt
		{
			get
			{
				return this._PersianYearMonthInt;
			}
			set
			{
				if ((this._PersianYearMonthInt != value))
				{
					this.OnPersianYearMonthIntChanging(value);
					this.SendPropertyChanging();
					this._PersianYearMonthInt = value;
					this.SendPropertyChanged("PersianYearMonthInt");
					this.OnPersianYearMonthIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianYearMonthStr", DbType="NVarChar(7)")]
		public string PersianYearMonthStr
		{
			get
			{
				return this._PersianYearMonthStr;
			}
			set
			{
				if ((this._PersianYearMonthStr != value))
				{
					this.OnPersianYearMonthStrChanging(value);
					this.SendPropertyChanging();
					this._PersianYearMonthStr = value;
					this.SendPropertyChanged("PersianYearMonthStr");
					this.OnPersianYearMonthStrChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianDayOfWeekName", DbType="NVarChar(MAX)")]
		public string PersianDayOfWeekName
		{
			get
			{
				return this._PersianDayOfWeekName;
			}
			set
			{
				if ((this._PersianDayOfWeekName != value))
				{
					this.OnPersianDayOfWeekNameChanging(value);
					this.SendPropertyChanging();
					this._PersianDayOfWeekName = value;
					this.SendPropertyChanged("PersianDayOfWeekName");
					this.OnPersianDayOfWeekNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianWeekOfYearName", DbType="NVarChar(MAX)")]
		public string PersianWeekOfYearName
		{
			get
			{
				return this._PersianWeekOfYearName;
			}
			set
			{
				if ((this._PersianWeekOfYearName != value))
				{
					this.OnPersianWeekOfYearNameChanging(value);
					this.SendPropertyChanging();
					this._PersianWeekOfYearName = value;
					this.SendPropertyChanged("PersianWeekOfYearName");
					this.OnPersianWeekOfYearNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianWeekOfYearNo", DbType="Int")]
		public System.Nullable<int> PersianWeekOfYearNo
		{
			get
			{
				return this._PersianWeekOfYearNo;
			}
			set
			{
				if ((this._PersianWeekOfYearNo != value))
				{
					this.OnPersianWeekOfYearNoChanging(value);
					this.SendPropertyChanging();
					this._PersianWeekOfYearNo = value;
					this.SendPropertyChanged("PersianWeekOfYearNo");
					this.OnPersianWeekOfYearNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersianFullName", DbType="NVarChar(MAX)")]
		public string PersianFullName
		{
			get
			{
				return this._PersianFullName;
			}
			set
			{
				if ((this._PersianFullName != value))
				{
					this.OnPersianFullNameChanging(value);
					this.SendPropertyChanging();
					this._PersianFullName = value;
					this.SendPropertyChanged("PersianFullName");
					this.OnPersianFullNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriInt", DbType="Int")]
		public System.Nullable<int> HijriInt
		{
			get
			{
				return this._HijriInt;
			}
			set
			{
				if ((this._HijriInt != value))
				{
					this.OnHijriIntChanging(value);
					this.SendPropertyChanging();
					this._HijriInt = value;
					this.SendPropertyChanged("HijriInt");
					this.OnHijriIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriYearInt", DbType="SmallInt")]
		public System.Nullable<short> HijriYearInt
		{
			get
			{
				return this._HijriYearInt;
			}
			set
			{
				if ((this._HijriYearInt != value))
				{
					this.OnHijriYearIntChanging(value);
					this.SendPropertyChanging();
					this._HijriYearInt = value;
					this.SendPropertyChanged("HijriYearInt");
					this.OnHijriYearIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriMonthNo", DbType="TinyInt")]
		public System.Nullable<byte> HijriMonthNo
		{
			get
			{
				return this._HijriMonthNo;
			}
			set
			{
				if ((this._HijriMonthNo != value))
				{
					this.OnHijriMonthNoChanging(value);
					this.SendPropertyChanging();
					this._HijriMonthNo = value;
					this.SendPropertyChanged("HijriMonthNo");
					this.OnHijriMonthNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriDayInMonth", DbType="TinyInt")]
		public System.Nullable<byte> HijriDayInMonth
		{
			get
			{
				return this._HijriDayInMonth;
			}
			set
			{
				if ((this._HijriDayInMonth != value))
				{
					this.OnHijriDayInMonthChanging(value);
					this.SendPropertyChanging();
					this._HijriDayInMonth = value;
					this.SendPropertyChanged("HijriDayInMonth");
					this.OnHijriDayInMonthChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriMonthDayInt", DbType="SmallInt")]
		public System.Nullable<short> HijriMonthDayInt
		{
			get
			{
				return this._HijriMonthDayInt;
			}
			set
			{
				if ((this._HijriMonthDayInt != value))
				{
					this.OnHijriMonthDayIntChanging(value);
					this.SendPropertyChanging();
					this._HijriMonthDayInt = value;
					this.SendPropertyChanged("HijriMonthDayInt");
					this.OnHijriMonthDayIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriDayOfWeekInt", DbType="TinyInt")]
		public System.Nullable<byte> HijriDayOfWeekInt
		{
			get
			{
				return this._HijriDayOfWeekInt;
			}
			set
			{
				if ((this._HijriDayOfWeekInt != value))
				{
					this.OnHijriDayOfWeekIntChanging(value);
					this.SendPropertyChanging();
					this._HijriDayOfWeekInt = value;
					this.SendPropertyChanged("HijriDayOfWeekInt");
					this.OnHijriDayOfWeekIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriMonthName", DbType="NVarChar(MAX)")]
		public string HijriMonthName
		{
			get
			{
				return this._HijriMonthName;
			}
			set
			{
				if ((this._HijriMonthName != value))
				{
					this.OnHijriMonthNameChanging(value);
					this.SendPropertyChanging();
					this._HijriMonthName = value;
					this.SendPropertyChanged("HijriMonthName");
					this.OnHijriMonthNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriStr", DbType="NVarChar(10)")]
		public string HijriStr
		{
			get
			{
				return this._HijriStr;
			}
			set
			{
				if ((this._HijriStr != value))
				{
					this.OnHijriStrChanging(value);
					this.SendPropertyChanging();
					this._HijriStr = value;
					this.SendPropertyChanged("HijriStr");
					this.OnHijriStrChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriYearMonthInt", DbType="Int")]
		public System.Nullable<int> HijriYearMonthInt
		{
			get
			{
				return this._HijriYearMonthInt;
			}
			set
			{
				if ((this._HijriYearMonthInt != value))
				{
					this.OnHijriYearMonthIntChanging(value);
					this.SendPropertyChanging();
					this._HijriYearMonthInt = value;
					this.SendPropertyChanged("HijriYearMonthInt");
					this.OnHijriYearMonthIntChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriYearMonthStr", DbType="NVarChar(7)")]
		public string HijriYearMonthStr
		{
			get
			{
				return this._HijriYearMonthStr;
			}
			set
			{
				if ((this._HijriYearMonthStr != value))
				{
					this.OnHijriYearMonthStrChanging(value);
					this.SendPropertyChanging();
					this._HijriYearMonthStr = value;
					this.SendPropertyChanged("HijriYearMonthStr");
					this.OnHijriYearMonthStrChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriDayOfWeekName", DbType="NVarChar(MAX)")]
		public string HijriDayOfWeekName
		{
			get
			{
				return this._HijriDayOfWeekName;
			}
			set
			{
				if ((this._HijriDayOfWeekName != value))
				{
					this.OnHijriDayOfWeekNameChanging(value);
					this.SendPropertyChanging();
					this._HijriDayOfWeekName = value;
					this.SendPropertyChanged("HijriDayOfWeekName");
					this.OnHijriDayOfWeekNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriWeekOfYearName", DbType="NVarChar(MAX)")]
		public string HijriWeekOfYearName
		{
			get
			{
				return this._HijriWeekOfYearName;
			}
			set
			{
				if ((this._HijriWeekOfYearName != value))
				{
					this.OnHijriWeekOfYearNameChanging(value);
					this.SendPropertyChanging();
					this._HijriWeekOfYearName = value;
					this.SendPropertyChanged("HijriWeekOfYearName");
					this.OnHijriWeekOfYearNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HijriWeekOfYearNo", DbType="Int")]
		public System.Nullable<int> HijriWeekOfYearNo
		{
			get
			{
				return this._HijriWeekOfYearNo;
			}
			set
			{
				if ((this._HijriWeekOfYearNo != value))
				{
					this.OnHijriWeekOfYearNoChanging(value);
					this.SendPropertyChanging();
					this._HijriWeekOfYearNo = value;
					this.SendPropertyChanged("HijriWeekOfYearNo");
					this.OnHijriWeekOfYearNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeasonCode", DbType="TinyInt")]
		public System.Nullable<byte> SeasonCode
		{
			get
			{
				return this._SeasonCode;
			}
			set
			{
				if ((this._SeasonCode != value))
				{
					this.OnSeasonCodeChanging(value);
					this.SendPropertyChanging();
					this._SeasonCode = value;
					this.SendPropertyChanged("SeasonCode");
					this.OnSeasonCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeasonName", DbType="NVarChar(MAX)")]
		public string SeasonName
		{
			get
			{
				return this._SeasonName;
			}
			set
			{
				if ((this._SeasonName != value))
				{
					this.OnSeasonNameChanging(value);
					this.SendPropertyChanging();
					this._SeasonName = value;
					this.SendPropertyChanged("SeasonName");
					this.OnSeasonNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsGregorianLeap", DbType="SmallInt")]
		public System.Nullable<short> IsGregorianLeap
		{
			get
			{
				return this._IsGregorianLeap;
			}
			set
			{
				if ((this._IsGregorianLeap != value))
				{
					this.OnIsGregorianLeapChanging(value);
					this.SendPropertyChanging();
					this._IsGregorianLeap = value;
					this.SendPropertyChanged("IsGregorianLeap");
					this.OnIsGregorianLeapChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsPersianLeap", DbType="SmallInt")]
		public System.Nullable<short> IsPersianLeap
		{
			get
			{
				return this._IsPersianLeap;
			}
			set
			{
				if ((this._IsPersianLeap != value))
				{
					this.OnIsPersianLeapChanging(value);
					this.SendPropertyChanging();
					this._IsPersianLeap = value;
					this.SendPropertyChanged("IsPersianLeap");
					this.OnIsPersianLeapChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsOneDayBefore_PersianHoliday", DbType="SmallInt")]
		public System.Nullable<short> IsOneDayBefore_PersianHoliday
		{
			get
			{
				return this._IsOneDayBefore_PersianHoliday;
			}
			set
			{
				if ((this._IsOneDayBefore_PersianHoliday != value))
				{
					this.OnIsOneDayBefore_PersianHolidayChanging(value);
					this.SendPropertyChanging();
					this._IsOneDayBefore_PersianHoliday = value;
					this.SendPropertyChanged("IsOneDayBefore_PersianHoliday");
					this.OnIsOneDayBefore_PersianHolidayChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsOneDayBefore_HijriHoliday", DbType="SmallInt")]
		public System.Nullable<short> IsOneDayBefore_HijriHoliday
		{
			get
			{
				return this._IsOneDayBefore_HijriHoliday;
			}
			set
			{
				if ((this._IsOneDayBefore_HijriHoliday != value))
				{
					this.OnIsOneDayBefore_HijriHolidayChanging(value);
					this.SendPropertyChanging();
					this._IsOneDayBefore_HijriHoliday = value;
					this.SendPropertyChanged("IsOneDayBefore_HijriHoliday");
					this.OnIsOneDayBefore_HijriHolidayChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591