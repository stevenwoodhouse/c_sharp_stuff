using System;
using Gtk;
using GdkSharp;
using MySql.Data.MySqlClient;
using System.Data;
using System.Xml;
using GLibSharp;
using GladeSharp;
using AtkSharp;


public partial class MainWindow: Gtk.Window
{	
	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();
		button1.ModifyBg(StateType.Normal, new Gdk.Color(118, 181, 226));

	}
	
	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

	// initial population of roles drop down
	void populate_roles()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call get_roles ('" + label1.Text + "');";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds2 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds2, "getroles");
		DataTable dt = ds2.Tables["getroles"];

		combobox1.Sensitive = true;
		combobox1.Clear();
		CellRendererText cell = new CellRendererText();
		combobox1.PackStart(cell, false);
		combobox1.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox1.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		
		connection.Close();	
		
		//combobox1.Active = 0;
				
	}
	
	
	void populate_prealert_model()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select model_name from models;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds3 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds3, "getmodels");
		DataTable dt = ds3.Tables["getmodels"];

		combobox3.Clear();
		CellRendererText cell = new CellRendererText();
		combobox3.PackStart(cell, false);
		combobox3.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox3.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		
		connection.Close();	
		combobox3.Sensitive = true;
		//combobox3.Active = 0;
	}
	
	
	void populate_prealert_line()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select line_name from `lines`;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds4 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds4, "getlines");
		DataTable dt = ds4.Tables["getlines"];

		combobox4.Clear();
		CellRendererText cell = new CellRendererText();
		combobox4.PackStart(cell, false);
		combobox4.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox4.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox4.Sensitive = true;
		connection.Close();		
	}
	
	
	
	void populate_prealert_primary_fault()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select fault_description from faults order by fault_description;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds5 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds5, "getfault");
		DataTable dt = ds5.Tables["getfault"];

		combobox5.Clear();
		CellRendererText cell = new CellRendererText();
		combobox5.PackStart(cell, false);
		combobox5.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox5.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox5.Sensitive = true;
		connection.Close();		
	}
	
	
	void populate_prealert_secondary_fault()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select fault_description from faults order by fault_description;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds6 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds6, "getfault");
		DataTable dt = ds6.Tables["getfault"];


		combobox6.Clear();
		CellRendererText cell = new CellRendererText();
		combobox6.PackStart(cell, false);
		combobox6.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox6.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox6.Sensitive = true;
		connection.Close();		
	}
	
	
	
	void populate_prealert_tertiary_fault()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select fault_description from faults order by fault_description;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds7 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds7, "getfault");
		DataTable dt = ds7.Tables["getfault"];

		
		combobox7.Clear();
		CellRendererText cell = new CellRendererText();
		combobox7.PackStart(cell, false);
		combobox7.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox7.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox7.Sensitive = true;
		connection.Close();	
	}
	
	
	void commit_prealert()
	{
		string sec;
		string thi = null;
		 if (combobox6.ActiveText == null ) 
		{
			sec =  ", null, null);";	
		}
		else
		{
			sec = ", '" + combobox6.ActiveText + "',";
			if (combobox7.ActiveText == null ) 
			{
				thi =" null);"	;
			}	
			else
			{
				thi = " '" + combobox7.ActiveText + "');";
			}
		}

		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call create_job_prealert ('" + entry3.Text + "', '" + combobox3.ActiveText + 
			"', '" + combobox4.ActiveText + "', '" + label1.Text + "', '" + combobox5.ActiveText + "'" +
			sec	+ thi;
		
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds8 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds8, "prealert");
	//	DataTable dt = ds8.Tables["prealert"];
		connection.Close();		


		//clearup
		entry3.Text = "";
		ListStore ClearList = new ListStore(typeof (string));
		combobox3.Model = ClearList;
		combobox4.Model = ClearList;
		combobox5.Model = ClearList;
		combobox6.Model = ClearList;
		combobox7.Model = ClearList;
		combobox3.Active = 0;
		combobox4.Active = 0;
		combobox5.Active = 0;
		combobox6.Active = 0;
		combobox7.Active = 0;
		combobox3.Sensitive = false;
		combobox4.Sensitive = false;
		combobox5.Sensitive = false;
		combobox6.Sensitive = false;
		combobox7.Sensitive = false;

		checkbutton4.Active = false;
		checkbutton5.Active = false;
		checkbutton4.Sensitive = false;
		checkbutton5.Sensitive = false;

		entry3.IsFocus = true;
	}
	
	
	// logout ---------------------------------------------------------------------
	void logout () 
	{
		entry4.Sensitive = true;
		entry4.IsFocus = true;
		notebook2.Visible = false;

		ListStore ClearList = new ListStore(typeof (string));
		combobox1.Model = ClearList;
		combobox1.Active = 0;
		label3.Text = "";

		label1.Text = "";
		button1.Sensitive = false;
	

	}
	
	
	void populate_new_user_init_line()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select line_name from `lines`;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds9 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds9, "getinitlines");
		DataTable dt = ds9.Tables["getinitlines"];

		combobox2.Clear();
		CellRendererText cell = new CellRendererText();
		combobox2.PackStart(cell, false);
		combobox2.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox2.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox2.Sensitive = true;
		connection.Close();	
	}



	void populate_new_user_init_role()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select role_name from roles order by role_process_order;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds9 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds9, "getinitlines");
		DataTable dt = ds9.Tables["getinitlines"];
		
		combobox8.Clear();
		CellRendererText cell = new CellRendererText();
		combobox8.PackStart(cell, false);
		combobox8.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox8.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox8.Sensitive = true;
		connection.Close();	
	}


	void commit_new_user ()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call new_user ('" + entry1.Text + "', '" + entry2.Text + "', '" + combobox2.ActiveText + "', '" + combobox8.ActiveText + "', '" + label1.Text + "');";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds10 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds10, "newuser");
		connection.Close();	

		//clearup
		entry1.Text = "";
		entry2.Text = "";
		entry2.Sensitive = false;
		ListStore ClearList = new ListStore(typeof (string));
		combobox2.Model = ClearList;
		combobox8.Model = ClearList;
		combobox2.Active = 0;
		combobox8.Active = 0;
		combobox2.Sensitive = false;
		combobox8.Sensitive = false;
		button2.Sensitive = false;

		
		entry1.IsFocus = true;

	}



	void populate_bookin_details ()
	{
		string s = entry5.Text;
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select j.job_id, imei, line_name, model_name, manufacturer_name, t.created_at, t.created_by " + 
			"from jobs j inner join `lines` l on j.line_id = l.line_id inner join models m on j.model_id = m.model_id inner join " +
				"manufacturer mm on m.manufacturer_id = mm.manufacturer_id inner join transactions t on j.job_id = t.job_id " +
				"where j.status_id = 1 and imei = '" + s + "'";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet ds11 = new DataSet ();
		connection.Open ();
		dataadapter.Fill (ds11, "prealertdetail1");
		connection.Close ();	

		if (ds11.Tables [0].Rows.Count == 0) 
		{
			MessageDialog msdSame = new MessageDialog(this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "imei not awaiting book in");
			ResponseType response = (ResponseType) msdSame.Run();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy();
			}
		} else 
		{
			label27.Text = ds11.Tables [0].Rows [0] ["job_id"].ToString ();
			label28.Text = ds11.Tables [0].Rows [0] ["model_name"].ToString ();
			label29.Text = ds11.Tables [0].Rows [0] ["manufacturer_name"].ToString ();
			label30.Text = ds11.Tables [0].Rows [0] ["created_by"].ToString ();
			label31.Text = ds11.Tables [0].Rows [0] ["created_at"].ToString ();
			label32.Text = ds11.Tables [0].Rows [0] ["line_name"].ToString ();

			button3.Sensitive = true;
			entry5.Sensitive = false;
			button3.IsFocus = true;
		}
	}


	void populate_screen_faults ()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select fault_description from faults order by fault_description;";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds13 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds13, "getfault");
		DataTable dt = ds13.Tables["getfault"];


		combobox9.Clear();
		CellRendererText cell = new CellRendererText();
		combobox9.PackStart(cell, false);
		combobox9.AddAttribute(cell, "text", 0);
		ListStore store = new ListStore(typeof (string));
		combobox9.Model = store;
		int i;
		for (i = 0; i <= dt.Rows.Count - 1; i++)
		{
			string s = dt.Rows[i].ItemArray[0].ToString() ;
			store.AppendValues(s);
		}
		combobox9.Sensitive = true;
		connection.Close();		
	}

	void populate_screen_details ()
	{
		string s = entry6.Text;
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select imei, j.job_id, model_name from jobs j inner join models m on j.model_id = m.model_id where status_id = 2 and imei = '" + s + "'";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet ds12 = new DataSet ();
		connection.Open ();
		dataadapter.Fill (ds12, "prealertdetail1");
		connection.Close ();	
		
		if (ds12.Tables [0].Rows.Count == 0) 
		{
			MessageDialog msdSame = new MessageDialog(this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "imei not awaiting screen");
			ResponseType response = (ResponseType) msdSame.Run();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy();
			}
		} else 
		{
			label40.Text = ds12.Tables [0].Rows [0] ["job_id"].ToString ();
			label45.Text = ds12.Tables [0].Rows [0] ["model_name"].ToString ();

			// now get the fault(s)

			string s2 = label40.Text;
			string connectionString2 = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
			string sql2 = "call get_prealert_faults ("  + s2 + ");";
			MySqlConnection connection2 = new MySqlConnection (connectionString2);
			MySqlDataAdapter dataadapter2 = new MySqlDataAdapter (sql2, connection2);
			DataSet ds12a = new DataSet ();
			connection2.Open ();
			dataadapter2.Fill (ds12a, "prealertdetail1a");
			connection2.Close ();	
			//
			label41.Text = ds12a.Tables [0].Rows [0] ["primary"].ToString ();
			label42.Text = ds12a.Tables [0].Rows [0] ["secondary"].ToString ();
			label43.Text = ds12a.Tables [0].Rows [0] ["tertiary"].ToString ();

			populate_screen_faults();
			combobox9.IsFocus = true;


		}
	}

	void populate_repair_details (string repair_type)
	{
		string s;
		if(repair_type == "repair") 
		{
			s = "3 and imei = '" + entry7.Text;
		} else 
		{
			s = "4 and imei = '" + entry8.Text;
		}
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select imei, j.job_id, model_name from jobs j inner join models m on j.model_id = m.model_id where status_id = " + s + "'";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet ds12 = new DataSet ();
		connection.Open ();
		dataadapter.Fill (ds12, "prealertdetail2");
		connection.Close ();	
		
		if (ds12.Tables [0].Rows.Count == 0) 
		{
			MessageDialog msdSame = new MessageDialog(this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType) msdSame.Run();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy();
			}
		} else 
		{;
			if(repair_type == "repair") {
				label54.Text = ds12.Tables [0].Rows [0] ["job_id"].ToString ();
				label55.Text = ds12.Tables [0].Rows [0] ["model_name"].ToString ();} else
			{
				label68.Text = ds12.Tables [0].Rows [0] ["job_id"].ToString ();
				label69.Text = ds12.Tables [0].Rows [0] ["model_name"].ToString ();
			}

			
			// now get the fault(s)
			
			string s2 ;

			if(repair_type == "repair") { s2 = label54.Text;} else {s2 = label68.Text;};

			string connectionString2 = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
			string sql2 = "call get_prealert_faults ("  + s2 + ");";
			MySqlConnection connection2 = new MySqlConnection (connectionString2);
			MySqlDataAdapter dataadapter2 = new MySqlDataAdapter (sql2, connection2);
			DataSet ds12a = new DataSet ();
			connection2.Open ();
			dataadapter2.Fill (ds12a, "prealertdetail1a");
			connection2.Close ();	
			//

			if(repair_type == "repair") 
			{
				label56.Text = ds12a.Tables [0].Rows [0] ["primary"].ToString ();		
				label57.Text = ds12a.Tables [0].Rows [0] ["secondary"].ToString ();
				label58.Text = ds12a.Tables [0].Rows [0] ["tertiary"].ToString ();
			} else
			{
				label70.Text = ds12a.Tables [0].Rows [0] ["primary"].ToString ();		
				label71.Text = ds12a.Tables [0].Rows [0] ["secondary"].ToString ();
				label72.Text = ds12a.Tables [0].Rows [0] ["tertiary"].ToString ();
			};

			string s3 = s2;

			string connectionString3 = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
			string sql3 = "select job_id, fault_description from transactions t inner join job_faults jf on t.transaction_id = jf.transaction_id inner join faults f on jf.fault_id = f.fault_id " +
			"where job_id = " + s3 + " and transaction_type_id = 4;";
			MySqlConnection connection3 = new MySqlConnection (connectionString3);
			MySqlDataAdapter dataadapter3 = new MySqlDataAdapter (sql3, connection3);
			DataSet ds123 = new DataSet ();
			connection3.Open ();
			dataadapter3.Fill (ds123, "prealertdetail13");
			connection3.Close ();	
			//
			if(repair_type == "repair") 
			{
				label59.Text = ds123.Tables [0].Rows [0] ["fault_description"].ToString ();
			} else 
			{
				label73.Text = ds123.Tables [0].Rows [0] ["fault_description"].ToString ();
			};

			//open up the processing
			ListStore store = new ListStore(typeof (string));
			CellRendererText cell = new CellRendererText();
			if(repair_type == "repair") 
			{
				vbox5.Visible = true;
				checkbutton7.Sensitive = true;
				checkbutton8.Sensitive = true;
				combobox10.Sensitive = true;

				combobox10.Clear();
				combobox10.PackStart(cell, false);
				combobox10.AddAttribute(cell, "text", 0);
				combobox10.Model = store;


			} else
			{
				vbox9.Visible = true;
				checkbutton9.Sensitive = true;
				checkbutton10.Sensitive = true;
				combobox15.Sensitive = true;
				
				combobox15.Clear();
				combobox15.PackStart(cell, false);
				combobox15.AddAttribute(cell, "text", 0);
				combobox15.Model = store;

			}

			store.AppendValues("Add Part");
			store.AppendValues("Replace Part");
			store.AppendValues("Resolder Part");


			
			
		}


	}

		
	void populate_ber_fault (string repair_type)
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "select fault_description from faults order by fault_description;";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet ds13 = new DataSet ();
		connection.Open ();
		dataadapter.Fill (ds13, "getfault");
		DataTable dt = ds13.Tables ["getfault"];
		
		if (repair_type == "repair") 
		{

			combobox11.Clear ();
			CellRendererText cell = new CellRendererText ();
			combobox11.PackStart (cell, false);
			combobox11.AddAttribute (cell, "text", 0);
			ListStore storea = new ListStore (typeof(string));
			combobox11.Model = storea;
			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++) {
				string s = dt.Rows [i].ItemArray [0].ToString ();
				storea.AppendValues (s);
			}
			combobox11.Sensitive = true;

		} else 
		{

			combobox17.Clear ();
			CellRendererText cell = new CellRendererText ();
			combobox17.PackStart (cell, false);
			combobox17.AddAttribute (cell, "text", 0);
			ListStore storea = new ListStore (typeof(string));
			combobox17.Model = storea;
			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++) {
				string s = dt.Rows [i].ItemArray [0].ToString ();
				storea.AppendValues (s);
			}
			combobox17.Sensitive = true;

		}

		connection.Close();	
	}


	void populate_repair_repair_codes ()
	{

	}







	// populate parts for repair
	void populate_repair_parts (string repair_type)
	{
		string s;
		if (repair_type == "repair") 
		{ 
			s = label55.Text + "', '" + combobox10.ActiveText;
		} else 
		{
			s = label69.Text + "', '" + combobox15.ActiveText;
		}

		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call return_repair_part_by_model('" + s + "');";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet ds13 = new DataSet ();
		connection.Open ();
		dataadapter.Fill (ds13, "getpart");
		DataTable dt = ds13.Tables ["getpart"];

		CellRendererText cell = new CellRendererText ();
		ListStore storea = new ListStore (typeof(string));
		if (repair_type == "repair") 
		{
			combobox12.Clear ();
			combobox12.PackStart (cell, false);
			combobox12.AddAttribute (cell, "text", 0);
			combobox12.Model = storea;

			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++)
			{
				string s2 = dt.Rows[i].ItemArray[0].ToString() ;
				storea.AppendValues(s2);
			}
			combobox12.Sensitive = true;
			combobox12.Visible = true;

		} else 
		{
			combobox16.Clear ();
			combobox16.PackStart (cell, false);
			combobox16.AddAttribute (cell, "text", 0);
			combobox16.Model = storea;

			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++)
			{
				string s2 = dt.Rows[i].ItemArray[0].ToString() ;
				storea.AppendValues(s2);
			}
			combobox16.Sensitive = true;
			combobox16.Visible = true;
		}

		connection.Close();	
	}


	// populate repair part faults
	void populate_repair_part_fault (string repair_type)
	{
		string s;
		if (repair_type == "repair") { 
			s = label55.Text + "', '" + combobox12.ActiveText + "', '" + combobox13.ActiveText;

		} else {
			s = label69.Text + "', '" + combobox16.ActiveText + "', '" + combobox18.ActiveText;
		}
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call get_repair_faults ('" + s +   "');";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapterz = new MySqlDataAdapter (sql, connection);
		DataSet ds13z = new DataSet ();
		connection.Open ();
		dataadapterz.Fill (ds13z, "getfault"); 
		DataTable dt = ds13z.Tables ["getfault"];
		
		CellRendererText cell = new CellRendererText ();
		ListStore storea = new ListStore (typeof(string));

		if (repair_type == "repair") { 
			combobox11.Clear ();
			combobox11.PackStart (cell, false);
			combobox11.AddAttribute (cell, "text", 0);
			combobox11.Model = storea;
			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++) {
				string s2 = dt.Rows [i].ItemArray [0].ToString ();
				storea.AppendValues (s2);
			}
			combobox11.Sensitive = true;
			combobox11.Visible = true;
		} else {
			combobox17.Clear ();
			combobox17.PackStart (cell, false);
			combobox17.AddAttribute (cell, "text", 0);
			combobox17.Model = storea;
			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++) {
				string s2 = dt.Rows [i].ItemArray [0].ToString ();
				storea.AppendValues (s2);
			}
			combobox17.Sensitive = true;
			combobox17.Visible = true;
		}
		connection.Close();	
	}


	void populate_repair_repair_reason (string repair_type)
	{
		string s;
		if (repair_type == "repair") { 
			s = label55.Text + "', '" + combobox12.ActiveText + "', '" + combobox13.ActiveText + "', '" + combobox11.ActiveText;
		} else {
			s = label69.Text + "', '" + combobox16.ActiveText + "', '" + combobox18.ActiveText + "', '" + combobox17.ActiveText;
		}

		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call get_repair_reasons ('" + s + "');";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapterz = new MySqlDataAdapter (sql, connection);
		DataSet ds13z = new DataSet ();
		connection.Open ();
		dataadapterz.Fill (ds13z, "getfault"); 
		DataTable dt = ds13z.Tables ["getfault"];
		

		CellRendererText cell = new CellRendererText ();
		ListStore storea = new ListStore (typeof(string));

		if (repair_type == "repair") { 
			combobox14.Clear ();
			combobox14.PackStart (cell, false);
			combobox14.AddAttribute (cell, "text", 0);
			combobox14.Model = storea;
			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++) {
				string s2 = dt.Rows [i].ItemArray [0].ToString ();
				storea.AppendValues (s2);
			}
			combobox14.Sensitive = true;
			combobox14.Visible = true;
		} else 
		{
			combobox19.Clear ();
			combobox19.PackStart (cell, false);
			combobox19.AddAttribute (cell, "text", 0);
			combobox19.Model = storea;
			int i;
			for (i = 0; i <= dt.Rows.Count - 1; i++) {
				string s2 = dt.Rows [i].ItemArray [0].ToString ();
				storea.AppendValues (s2);
			}
			combobox19.Sensitive = true;
			combobox19.Visible = true;
		} 


		connection.Close();	
		
	}

	//adds an entry to the node, based on previous selections.
	void add_repair_entry (string repair_type)
	{
		MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "add?");
		ResponseType response = (ResponseType)msdSame.Run ();
		if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
			msdSame.Destroy ();
		} else {
			// first copy the selected item paths into a temp array
			int maxIndex = -1; 		
			int selectedItemCount = treeview1.Selection.CountSelectedRows ();
			TreeIter[] selectedIters = new TreeIter[selectedItemCount];
			TreeModel lv;

			TreePath[] pathList;

			if (repair_type == "repair") { 
				pathList = treeview1.Selection.GetSelectedRows (out lv);                                               
			} else 
			{
				pathList = treeview2.Selection.GetSelectedRows (out lv);                                               
			}

			for (int i = 0; i < selectedItemCount; i++) {
				((ListStore)lv).GetIter (out selectedIters [i], pathList [i]);
				maxIndex = pathList [i].Indices [0];
			 }
			 
        

			//add the values
			if (repair_type == "repair") { 
				((ListStore)lv).AppendValues (combobox12.ActiveText, combobox11.ActiveText, combobox13.ActiveText, combobox14.ActiveText);
			} else
			{
				((ListStore)lv).AppendValues (combobox16.ActiveText, combobox17.ActiveText, combobox18.ActiveText, combobox19.ActiveText);
			}
			
			
			msdSame.Destroy ();

			//clearup
			ListStore ClearList = new ListStore(typeof (string));
		
			if (repair_type == "repair") 
			{ 
				combobox11.Model = ClearList;
				combobox12.Model = ClearList;
				combobox13.Model = ClearList;
				combobox14.Model = ClearList;
				button7.Sensitive = false;


				combobox10.Active = 0;
				combobox11.Active = 0;
				combobox12.Active = 0;
				combobox13.Active = 0;
				combobox14.Active = 0;
				
				button6.Sensitive = true;
				button6.Visible = true;
			} else 
			{

				combobox16.Model = ClearList;
				combobox17.Model = ClearList;
				combobox18.Model = ClearList;
				combobox19.Model = ClearList;
				button9.Sensitive = false;
				
				
				combobox15.Active = 0;
				combobox16.Active = 0;
				combobox17.Active = 0;
				combobox18.Active = 0;
				combobox19.Active = 0;
				
				button11.Sensitive = true;
				button11.Visible = true;
			}
		}




	}


	void populate_initial_repair_tree (string repair_type)
	{

		TreeViewColumn part = new TreeViewColumn ();
		part.Title = "part";
	
		TreeViewColumn fault = new TreeViewColumn ();
		fault.Title = "fault";

		TreeViewColumn repair = new TreeViewColumn ();
		repair.Title = "repair";

		TreeViewColumn reason = new TreeViewColumn ();
		reason.Title = "reason";
		

		if (repair_type == "repair") {
			treeview1.AppendColumn (part);
			treeview1.AppendColumn (fault);
			treeview1.AppendColumn (repair);
			treeview1.AppendColumn (reason);
		} else {
			treeview2.AppendColumn (part);
			treeview2.AppendColumn (fault);
			treeview2.AppendColumn (repair);
			treeview2.AppendColumn (reason);
		}
		
		ListStore repairstore = new ListStore (typeof(string), typeof(string), typeof(string), typeof(string));

		if (repair_type == "repair") {
			treeview1.Model = repairstore;
		} else {
			treeview2.Model = repairstore;
		}
				
		CellRendererText partcell = new CellRendererText ();
		part.PackStart (partcell, true);
		
		CellRendererText faultcell = new CellRendererText ();
		fault.PackStart (faultcell, true);

		CellRendererText repaircell = new CellRendererText ();
		repair.PackStart (repaircell, true);

		CellRendererText reasoncell = new CellRendererText ();
		reason.PackStart (reasoncell, true);
		
		part.AddAttribute (partcell, "text", 0);
		fault.AddAttribute (faultcell, "text", 1);
		repair.AddAttribute (repaircell, "text", 2);
		reason.AddAttribute (reasoncell, "text", 3);

		if (repair_type == "repair") 
		{
			treeview1.Visible = true;
		} else 
		{
			treeview2.Visible = true;
		}
	}


	void processpart (string jobid, string part, string fault, string repair, string reason, string username)
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call process_part (" + jobid + ", '" + part + 
			"', '" + username + "', '" + fault + "', '" + repair + "', '" + reason + "');";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet dsp = new DataSet();
		connection.Open();
		dataadapter.Fill(dsp, "processpart");
		connection.Close();	

		connection = null;
	}



	//traverse the treeview and get the parts added---------------------------------
	void commit_repair_parts (string repair_type)
	{
		TreeModel model;

		if (repair_type == "repair") { 
			model = treeview1.Model; 
		} else {
			model = treeview2.Model; 
		}

		TreeIter iter;
	
		model.GetIterFirst (out iter);
		// the loop to get through the rows
		do {
			string temp_part = model.GetValue (iter, 0).ToString ();
			string temp_fault = model.GetValue (iter, 1).ToString ();
			string temp_repair = model.GetValue (iter, 2).ToString ();
			string temp_reason = model.GetValue (iter, 3).ToString ();

			if (repair_type == "repair") {
				processpart (label54.Text, temp_part, temp_fault, temp_repair, temp_reason, label1.Text);
			} else {
				processpart (label68.Text, temp_part, temp_fault, temp_repair, temp_reason, label1.Text);
			}

		} while (model.IterNext(ref iter));
	
		// change the status of the job to qa

		string s;
		if (repair_type == "repair") {
			s = label54.Text;
		} else {
			s = label68.Text;
		}

		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "update jobs set status_id = 6, updated_by = '" + label1.Text +
			"', updated_at = now() where job_id = " + s + ";";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet dsp = new DataSet ();
		connection.Open ();
		dataadapter.Fill (dsp, "movetoqa");
		connection.Close ();	
		connection = null;

		// clearup
		if (repair_type == "repair") {
			entry7.Text = "";
			label54.Text = "";
			label55.Text = "";
			label56.Text = "";
			label57.Text = "";
			label58.Text = "";
			label59.Text = "";
		} else {	
			entry8.Text = "";
			label68.Text = "";
			label69.Text = "";
			label70.Text = "";
			label71.Text = "";
			label72.Text = "";
			label73.Text = "";
		}
		
		ListStore ClearList = new ListStore (typeof(string));
		if (repair_type == "repair") {
			combobox10.Model = ClearList;
			combobox11.Model = ClearList;
			combobox12.Model = ClearList;
			combobox13.Model = ClearList;
			combobox14.Model = ClearList;
			treeview1.Model = ClearList;
		
			combobox11.Visible = false;
			combobox13.Visible = false;
			combobox14.Visible = false;
			treeview1.Visible = false;
		
			checkbutton7.Active = false;
			button6.Sensitive = false;
			button6.Visible = false;
			vbox5.Visible = false;
		} else 
		{
			combobox15.Model = ClearList;
			combobox16.Model = ClearList;
			combobox17.Model = ClearList;
			combobox18.Model = ClearList;
			combobox19.Model = ClearList;
			treeview2.Model = ClearList;
			
			combobox17.Visible = false;
			combobox18.Visible = false;
			combobox19.Visible = false;
			treeview2.Visible = false;
			
			checkbutton9.Active = false;
			button11.Sensitive = false;
			button11.Visible = false;
			vbox9.Visible = false;
		}

	}


	void populate_qa_details ()
	{
	}


	//commit bookin 
	void book_in ()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call book_job_in ('" + entry5.Text + "', '" + label28.Text + "', '" + 
			label32.Text + "', '" + label1.Text + "');";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds12 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds12, "newuser");
		connection.Close();	

		//clearup
		entry5.Sensitive = true;
		entry5.Text = "";
		label27.Text = "";
		label28.Text = "";
		label29.Text = "";
		label30.Text = "";
		label31.Text = "";
		label32.Text = "";
		button3.Sensitive = false;
		entry5.IsFocus = true;
	}
	
	//commit screen
	void commit_screen ()
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call screened (" + label40.Text + ", '" + label1.Text + "', '" + 
			combobox9.ActiveText +  "');";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds12 = new DataSet();
		connection.Open();
		dataadapter.Fill(ds12, "screened");
		connection.Close();	
		
		//clearup
		entry6.Text = "";
		label40.Text = "";
		label41.Text = "";
		label42.Text = "";
		label43.Text = "";
		label45.Text = "";

		ListStore ClearList = new ListStore(typeof (string));
		combobox9.Model = ClearList;

		combobox9.Sensitive = false;

		button5.Sensitive = false;
		entry6.IsFocus = true;

	}

	//ber - deal with the transaction - with a switch to deal with either repair or debug flows
	void ber_initial (string repair_type)
	{
		if (repair_type == "repair") 
		{
			ListStore store = new ListStore (typeof(string));
			combobox10.Model = store;
			combobox10.Sensitive = false;

			combobox11.Visible = true;
			combobox13.Visible = true;
			combobox14.Visible = true;

			populate_ber_fault("repair");
		} else 
		{
			ListStore store = new ListStore (typeof(string));
			combobox15.Model = store;
			combobox15.Sensitive = false;
			
			combobox17.Visible = true;
			combobox18.Visible = true;
			combobox19.Visible = true;
			
			populate_ber_fault("debug");
		}







	}

	void commit_ber (string repair_type)
	{
		string s;
		if (repair_type == "repair") { 
			s = label54.Text + ", '" + label1.Text + "', '" + combobox11.ActiveText + "', '" + combobox13.ActiveText + "', '" + combobox14.ActiveText;
		} else {
			s = label68.Text + ", '" + label1.Text + "', '" + combobox17.ActiveText + "', '" + combobox18.ActiveText + "', '" + combobox19.ActiveText;
		}

		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call ber (" + s + "');";
		MySqlConnection connection = new MySqlConnection (connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter (sql, connection);
		DataSet ds12b = new DataSet ();
		connection.Open ();
		dataadapter.Fill (ds12b, "ber");
		connection.Close ();	

		ListStore ClearList = new ListStore (typeof(string));
		// clearup
		if (repair_type == "repair") { 
			entry7.Text = "";
			label54.Text = "";
			label55.Text = "";
			label56.Text = "";
			label57.Text = "";
			label58.Text = "";
			label59.Text = "";


			combobox10.Model = ClearList;
			combobox11.Model = ClearList;
			combobox12.Model = ClearList;
			combobox13.Model = ClearList;
			combobox14.Model = ClearList;
		
			combobox11.Visible = false;
			combobox13.Visible = false;
			combobox14.Visible = false;
		
			checkbutton7.Active = false;
			button6.Sensitive = false;
			button6.Visible = false;
			vbox5.Visible = false;
		} else 
		{
			entry8.Text = "";
			label68.Text = "";
			label69.Text = "";
			label70.Text = "";
			label71.Text = "";
			label72.Text = "";
			label73.Text = "";
		
			combobox15.Model = ClearList;
			combobox16.Model = ClearList;
			combobox17.Model = ClearList;
			combobox18.Model = ClearList;
			combobox19.Model = ClearList;
			
			combobox17.Visible = false;
			combobox18.Visible = false;
			combobox19.Visible = false;
			
			checkbutton9.Active = false;
			button11.Sensitive = false;
			button11.Visible = false;
			vbox9.Visible = false;
		}


	}

	//nff - deal with the transaction
	void nff (string repair_type)
	{
	}


	// login ------------------------------------------------------------------------------------
	protected void OnEntry4Activated (object sender, System.EventArgs e)
	{
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call return_user ('" + entry4.Text + "');";
		MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds = new DataSet();
		connection.Open();
		dataadapter.Fill(ds, "usercheck");
		connection.Close();	
		
		if (ds.Tables[0].Rows.Count == 0)
		{
			label1.Text = "Incorrect Login";
		}
		else 
		{
		
			label1.Text = ds.Tables[0].Rows[0]["user_name"].ToString();
			entry4.Text = "";
			entry4.Sensitive = false;
			populate_roles();
			combobox1.IsFocus = true;
			button1.Sensitive = true;
			this.Title = "JobApp - choose role";
		}
	
	}

	// role select ---------------------------------------------------------------------------------------
	protected void OnCombobox1Changed (object sender, System.EventArgs e)
	{
		if (combobox1.ActiveText == "admin")
		{
		 	label3.Text = "admin";
			notebook2.Visible = true;
			notebook2.CurrentPage = 0;
			notebook3.CurrentPage = 0;
			notebook4.CurrentPage = 0;
			entry1.IsFocus = true;
			this.Title = "JobApp - admin - user - new user";
		}
		else if (combobox1.ActiveText == "prealert")
		{
		 	label3.Text = "prealert";
			notebook2.Visible = true;
			notebook2.CurrentPage = 1;
			entry3.IsFocus = true;
			this.Title = "JobApp - prealert";
		}
		else if (combobox1.ActiveText == "book_in")
		{
		 	label3.Text = "book in";
			notebook2.Visible = true;
			notebook2.CurrentPage = 2;
			entry5.IsFocus = true;
			this.Title = "JobApp - bookin";
		}
		else if (combobox1.ActiveText == "screen")
		{
			label3.Text = "screen";
			notebook2.Visible = true;
			notebook2.CurrentPage = 3;
			entry6.IsFocus = true;
			this.Title = "JobApp - screen";
		}
		else if (combobox1.ActiveText == "repair")
		{
			label3.Text = "repair";
			notebook2.Visible = true;
			notebook2.CurrentPage = 4;
			entry7.IsFocus = true;
			this.Title = "JobApp - repair";
		}
		else if (combobox1.ActiveText == "debug")
		{
			label3.Text = "debug";
			notebook2.Visible = true;
			notebook2.CurrentPage = 5;
			entry8.IsFocus = true;
			this.Title = "JobApp - debug";
		}
		else if (combobox1.ActiveText == "qa")
		{
			label3.Text = "qa";
			notebook2.Visible = true;
			notebook2.CurrentPage = 6;
			entry9.IsFocus = true;
			this.Title = "JobApp - qa";
		}
	}
	
	
	//prealert ----------------------------------------------------

	//imei input
	protected void OnEntry3Activated (object sender, System.EventArgs e)
	{
		if (entry3.Text.Length < 15)
		{
			MessageDialog msdSame = new MessageDialog(this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType) msdSame.Run();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy();
			}
		}
		else
		{
			populate_prealert_model();
		}
		

	}

	protected void OnCombobox3Changed (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			populate_prealert_line ();
		}

	}

	protected void OnCombobox4Changed (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			populate_prealert_primary_fault ();
		}
	}

	protected void OnCombobox5Changed (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			button4.Sensitive = true; // able to do prealert from here
			checkbutton4.Sensitive = true;
			checkbutton4.IsFocus = true;
		}
	}

	protected void OnCheckbutton4Toggled (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			populate_prealert_secondary_fault ();
		}
	}

	protected void OnCombobox6Changed (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			checkbutton5.Sensitive = true;
			checkbutton5.IsFocus = true;
		}
	}

	protected void OnCheckbutton5Toggled (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			populate_prealert_tertiary_fault ();
		}
	}

	// commit prealert
	protected void OnButton4Clicked (object sender, System.EventArgs e)
	{
		if (entry3.Text != "") 
		{

			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "commit prealert");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
				msdSame.Destroy ();
			} else 
			{
				commit_prealert ();
				msdSame.Destroy ();
			}
		}
	}
	
	
	
	// logout ------------------------------------------------------------------------
	protected void OnButton1Clicked (object sender, System.EventArgs e)
	{
		if (label1.Text != "") 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "logout");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
				msdSame.Destroy ();
			} else {
				logout ();
				msdSame.Destroy ();
			}
		}
	}
	
	
	//admin - new user ------------------------------------------------


	protected void OnCombobox2Changed (object sender, EventArgs e)
	{
		if (entry1.Text != "") {
			combobox8.Sensitive = true;
			populate_new_user_init_role ();
		}
	}

	protected void OnEntry1Activated (object sender, EventArgs e)
	{
		entry2.Sensitive = true;
		entry2.IsFocus = true;
	}

	protected void OnEntry2Activated (object sender, EventArgs e)
	{
		if (entry1.Text != "") 
		{
			combobox2.Sensitive = true;
			populate_new_user_init_line ();
		}
	}

	protected void OnCombobox8Changed (object sender, EventArgs e)
	{
		if (entry1.Text != "") 
		{
			button2.Sensitive = true;
			button2.IsFocus = true;
		}
	}

	// commit new user
	protected void OnButton2Clicked (object sender, EventArgs e)
	{
		if (entry1.Text != "") 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "commit new user");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
				msdSame.Destroy ();
			} else 
			{
				commit_new_user ();
				msdSame.Destroy ();
			}
		}
	}


	// book in imei

	protected void OnEntry5Activated (object sender, EventArgs e)
	{
		if (entry5.Text.Length < 15) 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy ();
			}

		} else 
		{
			populate_bookin_details();
		}
	}

	// commit book in
	protected void OnButton3Clicked (object sender, EventArgs e)
	{
		if (entry5.Text != "") 
		{
			
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "commit bookin");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) 
			{
				//clearup
				entry5.Sensitive = true;
				entry5.Text = "";
				label27.Text = "";
				label28.Text = "";
				label29.Text = "";
				label30.Text = "";
				label31.Text = "";
				label32.Text = "";
				button3.Sensitive = false;
				entry5.IsFocus = true;

				msdSame.Destroy ();
			} else 
			{
				book_in();
				msdSame.Destroy ();
			}
		}
	}


	//screen
	protected void OnEntry6Activated (object sender, EventArgs e)
	{
		if (entry6.Text.Length < 15) 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy ();
			}
			
		} else 
		{
			populate_screen_details();
		}
	}


	// make commit button active and focused when a fault is selected
	protected void OnCombobox9Changed (object sender, EventArgs e)
	{
		button5.Sensitive = true;
		button5.IsFocus = true;
	}


	// when the commit button is pressed
	protected void OnButton5Clicked (object sender, EventArgs e)
	{
		if (entry6.Text.Length < 15) 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy ();
			}
			
		} else 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "commit screen");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
				msdSame.Destroy ();
			} else 
			{
				commit_screen();
				msdSame.Destroy ();
			}

		}

	}


	protected void OnEntry7Activated (object sender, EventArgs e)
	{
		if (entry7.Text.Length < 15) 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy ();
			}
			
		} else 
		{
			populate_repair_details("repair");
			combobox10.IsFocus = true;
		}
	}



	protected void OnCombobox10Changed (object sender, EventArgs e)
	{
		combobox11.Visible = true;
		combobox13.Visible = true;
		combobox14.Visible = true;



		// make the repair code equal the combobox 10 text
		if (combobox10.ActiveText == "Add Part") 
		{
			combobox13.Sensitive = true;
			combobox13.Clear();
			CellRendererText cell = new CellRendererText();
			combobox13.PackStart(cell, false);
			combobox13.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox13.Model = store;
			store.AppendValues("Add Part");
			combobox13.Active = 0;

		} else if (combobox10.ActiveText == "Replace Part") 
		{
			combobox13.Sensitive = true;
			combobox13.Clear();
			CellRendererText cell = new CellRendererText();
			combobox13.PackStart(cell, false);
			combobox13.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox13.Model = store;
			store.AppendValues("Replace Part");
			combobox13.Active = 0;

		} else if (combobox10.ActiveText == "Resolder Part") 
		{
			combobox13.Sensitive = true;
			combobox13.Clear();
			CellRendererText cell = new CellRendererText();
			combobox13.PackStart(cell, false);
			combobox13.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox13.Model = store;
			store.AppendValues("Resolder Part");
			combobox13.Active = 0;

		}

		populate_repair_parts("repair");
	}


	//repair - ber clicked
	protected void OnCheckbutton7Clicked (object sender, EventArgs e)
	{

		if (entry7.Text != "") {
			if (checkbutton7.Active == true) 
			{
				MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "BER. Are you sure");
				ResponseType response = (ResponseType)msdSame.Run ();
				if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
					//clearup
					checkbutton7.Active = false;

					msdSame.Destroy ();

				} else
				{
					ber_initial("repair");			
					button6.Sensitive = true;
					msdSame.Destroy ();
				}
			}
		}
	}

	//repair - NFF clicked
	protected void OnCheckbutton8Clicked (object sender, EventArgs e)
	{
		if (entry7.Text != "") {
			if (checkbutton8.Active == true) 
			{
				MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "BER. Are you sure");
				ResponseType response = (ResponseType)msdSame.Run ();
				if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
					//clearup
					checkbutton8.Active = false;
					
					msdSame.Destroy ();
					
				} else
				{
					nff("repair");			
					button6.Sensitive = true;
					msdSame.Destroy ();
				}
			}
		}
	}


	protected void OnCombobox11Changed (object sender, EventArgs e)
	{
		combobox13.Sensitive = true;
		if (checkbutton7.Active == true) {
			combobox13.Clear();
			CellRendererText cell = new CellRendererText();
			combobox13.PackStart(cell, false);
			combobox13.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox13.Model = store;
			store.AppendValues("ber");

			combobox13.Active = 0;

			combobox14.Sensitive = true;
			combobox14.IsFocus = true;


		} else 
		{
			populate_repair_repair_reason ("repair");
		}

	
	}
	 

	protected void OnCombobox13Changed (object sender, EventArgs e)
	{
		if (checkbutton7.Active == true) {
			combobox14.Clear ();
			CellRendererText cell = new CellRendererText ();
			combobox14.PackStart (cell, false);
			combobox14.AddAttribute (cell, "text", 0);
			ListStore store = new ListStore (typeof(string));
			combobox14.Model = store;
			store.AppendValues ("parts exceed ceiling price");
			store.AppendValues ("liquid ingress");
			store.AppendValues ("customer damage");
		} else 
		{
		//	populate_repair_repair_reason ();
		}

	}


	protected void OnCombobox14Changed (object sender, EventArgs e)
	{
		if (checkbutton7.Active == true) {
			button6.Visible = true;
			button6.IsFocus = true;
		} else 	if (checkbutton8.Active == true) 
		{

		} else 
		{
			button7.Visible = true;
			button7.Sensitive = true;
			button7.IsFocus = true;
			GtkScrolledWindow.Visible = true;
			treeview1.Visible = true;

			//string selectedItemCount = treeview1.
			if (this.treeview1.Model == null)
			{
				populate_initial_repair_tree("repair");
			}
		}


	}

	protected void OnButton6Clicked (object sender, EventArgs e)
	{
		if (checkbutton7.Active == true) //ber
		{

			commit_ber ("repair");
		} else if (checkbutton8.Active == true) // nff
		{

		} else // parts
		{
			if (entry7.Text != "") {
				MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "Commit Repair?");
				ResponseType response = (ResponseType)msdSame.Run ();
				if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) 
				{
					msdSame.Destroy ();

				} else
				{
					commit_repair_parts("repair");
					msdSame.Destroy ();
				}
			}
		}
	
	}

	protected void OnCombobox12Changed (object sender, EventArgs e)
	{ 
		if (entry7.Text != "")
		{

				populate_repair_part_fault("repair");
		
		}
	}

	protected void OnButton7Clicked (object sender, EventArgs e)
	{
		add_repair_entry("repair");

	}

	protected void OnTreeview1CursorChanged (object sender, EventArgs e)
	{
		button8.Visible = true;
		button8.Sensitive = true;

	}

	protected void OnButton8Clicked (object sender, EventArgs e)
	{
		MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "remove?");
		ResponseType response = (ResponseType)msdSame.Run ();
		if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) 
		{
			msdSame.Destroy ();
		} else 
		{
			
			// first copy the selected item paths into a temp array
			int maxIndex = -1; 
			int selectedItemCount = treeview1.Selection.CountSelectedRows ();
			TreeIter[] selectedIters = new TreeIter[selectedItemCount];
			TreeModel lv;
			
			TreePath[] pathList = treeview1.Selection.GetSelectedRows (out lv);                                               
			for (int i = 0; i < selectedItemCount; i++) {
				((ListStore)lv).GetIter (out selectedIters [i], pathList [i]);
				maxIndex = pathList [i].Indices [0];
			}
			
			// now delete each item in that list
			foreach (TreeIter toDelete in selectedIters) {
				TreeIter itr = toDelete;                              
				((ListStore)lv).Remove (ref itr);
			}
			
			msdSame.Destroy ();
		}
	}


	// debug ----------------------------------------------------------------------------------------------------------
	protected void OnEntry8Activated (object sender, System.EventArgs e)
	{


		if (entry8.Text.Length < 15) 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy ();
			}
			
		} else 
		{
			populate_repair_details("debug");
			combobox15.IsFocus = true;
		}

	}

	protected void OnCheckbutton9Clicked (object sender, System.EventArgs e)
	{

		if (entry7.Text != "") {
			if (checkbutton7.Active == true) 
			{
				MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "BER. Are you sure");
				ResponseType response = (ResponseType)msdSame.Run ();
				if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
					//clearup
					checkbutton9.Active = false;
					
					msdSame.Destroy ();
					
				} else
				{
					ber_initial("debug");			
					button11.Sensitive = true;
					msdSame.Destroy ();
				}
			}
		}
	}

	protected void OnCheckbutton10Clicked (object sender, System.EventArgs e)
	{

		if (entry8.Text != "") {
			if (checkbutton10.Active == true) 
			{
				MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "BER. Are you sure");
				ResponseType response = (ResponseType)msdSame.Run ();
				if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) {
					//clearup
					checkbutton10.Active = false;
					
					msdSame.Destroy ();
					
				} else
				{
					nff("debug");			
					button11.Sensitive = true;
					msdSame.Destroy ();
				}
			}
		}

	}

	protected void OnCombobox15Changed (object sender, System.EventArgs e)
	{
		combobox17.Visible = true;
		combobox18.Visible = true;
		combobox19.Visible = true;
			
			
			
		// make the repair code equal the combobox 10 text
		if (combobox15.ActiveText == "Add Part") 
		{
			combobox18.Sensitive = true;
			combobox18.Clear();
			CellRendererText cell = new CellRendererText();
			combobox18.PackStart(cell, false);
			combobox18.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox18.Model = store;
			store.AppendValues("Add Part");
			combobox18.Active = 0;
			
		} else if (combobox15.ActiveText == "Replace Part") 
		{
			combobox18.Sensitive = true;
			combobox18.Clear();
			CellRendererText cell = new CellRendererText();
			combobox18.PackStart(cell, false);
			combobox18.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox18.Model = store;
			store.AppendValues("Replace Part");
			combobox18.Active = 0;
			
		} else if (combobox15.ActiveText == "Resolder Part") 
		{
			combobox18.Sensitive = true;
			combobox18.Clear();
			CellRendererText cell = new CellRendererText();
			combobox18.PackStart(cell, false);
			combobox18.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox18.Model = store;
			store.AppendValues("Resolder Part");
			combobox18.Active = 0;
			
		}
		
		populate_repair_parts("debug");
	}



	protected void OnCombobox16Changed (object sender, System.EventArgs e)
	{

		if (entry8.Text != "")
		{
			
			populate_repair_part_fault("debug");
			
		}

	}

	protected void OnCombobox17Changed (object sender, System.EventArgs e)
	{

		combobox18.Sensitive = true;
		if (checkbutton9.Active == true) {
			combobox18.Clear();
			CellRendererText cell = new CellRendererText();
			combobox18.PackStart(cell, false);
			combobox18.AddAttribute(cell, "text", 0);
			ListStore store = new ListStore(typeof (string));
			combobox18.Model = store;
			store.AppendValues("ber");
			
			combobox18.Active = 0;
			
			combobox19.Sensitive = true;
			combobox19.IsFocus = true;
			
			
		} else 
		{
			populate_repair_repair_reason ("debug");
		}


	}

	protected void OnCombobox18Changed (object sender, System.EventArgs e)
	{
		//throw new System.NotImplementedException ();
	}

	protected void OnCombobox19Changed (object sender, System.EventArgs e)
	{

		if (checkbutton9.Active == true) {
			button11.Visible = true;
			button11.IsFocus = true;
		} else 	if (checkbutton10.Active == true) 
		{
			
		} else 
		{
			button9.Visible = true;
			button9.Sensitive = true;
			button9.IsFocus = true;
			GtkScrolledWindow.Visible = true;
			treeview2.Visible = true;
			
			if (this.treeview2.Model == null)
			{
				populate_initial_repair_tree("debug");
			}
		}

	}

	protected void OnTreeview2CursorChanged (object sender, System.EventArgs e)
	{
		button10.Visible = true;
		button10.Sensitive = true;

	}

	protected void OnButton9Clicked (object sender, System.EventArgs e)
	{
		add_repair_entry("debug");

	}

	protected void OnButton10Clicked (object sender, System.EventArgs e)
	{
	
		MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "remove?");
		ResponseType response = (ResponseType)msdSame.Run ();
		if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) 
		{
			msdSame.Destroy ();
		} else 
		{
			
			// first copy the selected item paths into a temp array
			int maxIndex = -1; 

			int selectedItemCount = treeview2.Selection.CountSelectedRows ();

			TreeIter[] selectedIters = new TreeIter[selectedItemCount];
			TreeModel lv;
			
			TreePath[] pathList = treeview2.Selection.GetSelectedRows (out lv);    

			for (int i = 0; i < selectedItemCount; i++) {
				((ListStore)lv).GetIter (out selectedIters [i], pathList [i]);
				maxIndex = pathList [i].Indices [0];
			}
			
			// now delete each item in that list
			foreach (TreeIter toDelete in selectedIters) {
				TreeIter itr = toDelete;                              
				((ListStore)lv).Remove (ref itr);
			}
			
			msdSame.Destroy ();
		}

	}

	protected void OnButton11Clicked (object sender, System.EventArgs e)
	{

		if (checkbutton9.Active == true) //ber
		{
			
			commit_ber ("debug");
		} else if (checkbutton10.Active == true) // nff
		{
			
		} else // parts
		{
			if (entry8.Text != "") {
				MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.OkCancel, "Commit Debug?");
				ResponseType response = (ResponseType)msdSame.Run ();
				if (response == ResponseType.Cancel || response == ResponseType.DeleteEvent) 
				{
					msdSame.Destroy ();
					
				} else
				{
					commit_repair_parts("debug");
					msdSame.Destroy ();
				}
			}
		}
		   

	}

	protected void OnButton12Clicked (object sender, System.EventArgs e)
	{
		throw new System.NotImplementedException ();
	}

	protected void OnCombobox7Changed (object sender, EventArgs e)
	{
		//throw new System.NotImplementedException ();
	}


	protected void OnCheckbutton8Toggled (object sender, EventArgs e)
	{
		throw new System.NotImplementedException ();
	}


	// QA ----------------------------------------------------------------------------------
	protected void OnEntry9Activated (object sender, EventArgs e)
	{
		
		if (entry9.Text.Length < 15) 
		{
			MessageDialog msdSame = new MessageDialog (this, DialogFlags.Modal, MessageType.Error, ButtonsType.Close, "incorrect imei");
			ResponseType response = (ResponseType)msdSame.Run ();
			if (response == ResponseType.Close || response == ResponseType.DeleteEvent) 
			{
				msdSame.Destroy ();
			}
			
		} else 
		{
			populate_qa_details();
			// combobox15.IsFocus = true;
		}
	}
}


