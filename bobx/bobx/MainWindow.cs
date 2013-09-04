using System;
using Gtk;

public partial class MainWindow: Gtk.Window
{	
	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();
		createtree();




			
	}

	void createtree ()
	{
	//	TreeView treeview1 = new TreeView();

		TreeViewColumn bob = new TreeViewColumn ();
		bob.Title = "hi there";
		
		TreeViewColumn bob2 = new TreeViewColumn ();
		bob2.Title = "hi there2";
		
		treeview1.AppendColumn(bob);
		treeview1.AppendColumn(bob2);



		ListStore teststore = new ListStore(typeof (string), typeof(string));
		
		treeview1.Model = teststore;
		
		
		CellRendererText bobcell = new CellRendererText ();
		bob.PackStart (bobcell, true);
		
		CellRendererText bob2cell = new CellRendererText ();
		bob2.PackStart (bob2cell, true);
		
		bob.AddAttribute (bobcell, "text", 0);
		bob2.AddAttribute (bob2cell, "text", 1);
		
		TreeIter iter;
		
		iter = teststore.AppendValues("test1", "test2");
		teststore.AppendValues("test3", "test4");
		teststore.AppendValues("test5", "test6");
	}
	
	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

	protected void OnTreeview1CursorChanged (object sender, EventArgs e)
	{
		TreeSelection selection = (sender as TreeView).Selection;
		TreeModel model;
		TreeIter iter;


		if (selection.GetSelected (out model, out iter)) 
		{
	
			label1.Text = model.GetValue (iter, 0).ToString ()+ model.GetValue (iter, 1).ToString();

		}
	}


	protected void OnButton2Clicked (object sender, EventArgs e)
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


	protected void OnButton1Clicked (object sender, EventArgs e)
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

			TreePath[] pathList = treeview1.Selection.GetSelectedRows (out lv);                                               
			for (int i = 0; i < selectedItemCount; i++) {
				((ListStore)lv).GetIter (out selectedIters [i], pathList [i]);
				maxIndex = pathList [i].Indices [0];
			}

			//add the values
			((ListStore)lv).AppendValues (entry1.Text, entry2.Text);


			msdSame.Destroy ();
		}
	}
}
	

