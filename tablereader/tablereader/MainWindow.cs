using System;
using System.Xml;
using Gtk;
using System.Data;
using MySql.Data.MySqlClient;
using MonoDevelop.Database.Components;

public partial class MainWindow: Gtk.Window
{	
	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();
		//bob ();
	}
	
	
	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}


	private void bob()
	{
		
		string connectionString = "Server=localhost;Database=test_data;Uid=root;Pwd=p455w0rd;";
		string sql = "call joblist ('" + entry2.Text + "');";
	   	MySqlConnection connection = new MySqlConnection(connectionString);
		MySqlDataAdapter dataadapter = new MySqlDataAdapter(sql, connection);
		DataSet ds = new DataSet();
		connection.Open();
		dataadapter.Fill(ds, "job_history");
		connection.Close();
 
	    datagrid1.DataSource.DataSet = ds;
		//datagrid1.dataDataMember = "job_history";
		
	}



	protected void OnEntry2Activated (object sender, System.EventArgs e)
	{
		bob();
	}
}
