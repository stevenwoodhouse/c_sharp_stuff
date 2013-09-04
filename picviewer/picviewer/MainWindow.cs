using System;
using Gtk;
 
public partial class MainWindow: Gtk.Window
{	
	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();
	}
	
	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

	protected void OnButtonCloseClicked (object sender, EventArgs e)
	{
		// throw new System.NotImplementedException ();
		Application.Quit ();
	 
	}




	protected void OnFilechooserbutton2SelectionChanged (object sender, EventArgs e)
	{
		image3.File = filechooserbutton2.Filename;
		//throw new System.NotImplementedException ();
	
	}

}


