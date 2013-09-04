using System;
using Gtk;
using System.Data;

namespace tablereader
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			Application.Init ();
			MainWindow win = new MainWindow ();
			win.Show ();
			Application.Run ();
		}




		
	//	private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
	//	{
	//		if (e.KeyChar == (char)13)
	//		{
	//			bob();
	//			
	//		}
	//	}
	}
}
