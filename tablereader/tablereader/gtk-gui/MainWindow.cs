
// This file has been generated by the GUI designer. Do not modify.

public partial class MainWindow
{
	private global::Gtk.Table table3;
	private global::MonoDevelop.Database.Components.DataGrid datagrid1;
	private global::Gtk.Table table4;
	private global::Gtk.Entry entry2;
	private global::Gtk.Table table6;
	private global::Gtk.Label label5;
	private global::Gtk.Label label6;
	private global::Gtk.Label label7;
	private global::Gtk.Label label8;
	
	protected virtual void Build ()
	{
		global::Stetic.Gui.Initialize (this);
		// Widget MainWindow
		this.Name = "MainWindow";
		this.Title = global::Mono.Unix.Catalog.GetString ("MainWindow");
		this.WindowPosition = ((global::Gtk.WindowPosition)(4));
		// Container child MainWindow.Gtk.Container+ContainerChild
		this.table3 = new global::Gtk.Table (((uint)(2)), ((uint)(1)), false);
		this.table3.Name = "table3";
		this.table3.RowSpacing = ((uint)(6));
		this.table3.ColumnSpacing = ((uint)(6));
		// Container child table3.Gtk.Table+TableChild
		this.datagrid1 = null;
		this.table3.Add (this.datagrid1);
		global::Gtk.Table.TableChild w1 = ((global::Gtk.Table.TableChild)(this.table3 [this.datagrid1]));
		w1.TopAttach = ((uint)(1));
		w1.BottomAttach = ((uint)(2));
		w1.XOptions = ((global::Gtk.AttachOptions)(4));
		w1.YOptions = ((global::Gtk.AttachOptions)(4));
		// Container child table3.Gtk.Table+TableChild
		this.table4 = new global::Gtk.Table (((uint)(1)), ((uint)(2)), false);
		this.table4.Name = "table4";
		this.table4.RowSpacing = ((uint)(6));
		this.table4.ColumnSpacing = ((uint)(6));
		// Container child table4.Gtk.Table+TableChild
		this.entry2 = new global::Gtk.Entry ();
		this.entry2.CanFocus = true;
		this.entry2.Name = "entry2";
		this.entry2.IsEditable = true;
		this.entry2.WidthChars = 15;
		this.entry2.MaxLength = 15;
		this.entry2.InvisibleChar = '●';
		this.table4.Add (this.entry2);
		global::Gtk.Table.TableChild w2 = ((global::Gtk.Table.TableChild)(this.table4 [this.entry2]));
		w2.LeftAttach = ((uint)(1));
		w2.RightAttach = ((uint)(2));
		w2.XOptions = ((global::Gtk.AttachOptions)(4));
		w2.YOptions = ((global::Gtk.AttachOptions)(4));
		// Container child table4.Gtk.Table+TableChild
		this.table6 = new global::Gtk.Table (((uint)(2)), ((uint)(2)), false);
		this.table6.Name = "table6";
		this.table6.RowSpacing = ((uint)(6));
		this.table6.ColumnSpacing = ((uint)(6));
		// Container child table6.Gtk.Table+TableChild
		this.label5 = new global::Gtk.Label ();
		this.label5.Name = "label5";
		this.label5.LabelProp = global::Mono.Unix.Catalog.GetString ("label5");
		this.table6.Add (this.label5);
		global::Gtk.Table.TableChild w3 = ((global::Gtk.Table.TableChild)(this.table6 [this.label5]));
		w3.YOptions = ((global::Gtk.AttachOptions)(4));
		// Container child table6.Gtk.Table+TableChild
		this.label6 = new global::Gtk.Label ();
		this.label6.Name = "label6";
		this.label6.LabelProp = global::Mono.Unix.Catalog.GetString ("label6");
		this.table6.Add (this.label6);
		global::Gtk.Table.TableChild w4 = ((global::Gtk.Table.TableChild)(this.table6 [this.label6]));
		w4.TopAttach = ((uint)(1));
		w4.BottomAttach = ((uint)(2));
		w4.LeftAttach = ((uint)(1));
		w4.RightAttach = ((uint)(2));
		w4.YOptions = ((global::Gtk.AttachOptions)(4));
		// Container child table6.Gtk.Table+TableChild
		this.label7 = new global::Gtk.Label ();
		this.label7.Name = "label7";
		this.label7.LabelProp = global::Mono.Unix.Catalog.GetString ("label7");
		this.table6.Add (this.label7);
		global::Gtk.Table.TableChild w5 = ((global::Gtk.Table.TableChild)(this.table6 [this.label7]));
		w5.LeftAttach = ((uint)(1));
		w5.RightAttach = ((uint)(2));
		w5.YOptions = ((global::Gtk.AttachOptions)(4));
		// Container child table6.Gtk.Table+TableChild
		this.label8 = new global::Gtk.Label ();
		this.label8.Name = "label8";
		this.label8.LabelProp = global::Mono.Unix.Catalog.GetString ("label8");
		this.table6.Add (this.label8);
		global::Gtk.Table.TableChild w6 = ((global::Gtk.Table.TableChild)(this.table6 [this.label8]));
		w6.TopAttach = ((uint)(1));
		w6.BottomAttach = ((uint)(2));
		w6.YOptions = ((global::Gtk.AttachOptions)(4));
		this.table4.Add (this.table6);
		global::Gtk.Table.TableChild w7 = ((global::Gtk.Table.TableChild)(this.table4 [this.table6]));
		w7.YOptions = ((global::Gtk.AttachOptions)(4));
		this.table3.Add (this.table4);
		global::Gtk.Table.TableChild w8 = ((global::Gtk.Table.TableChild)(this.table3 [this.table4]));
		w8.XOptions = ((global::Gtk.AttachOptions)(4));
		w8.YOptions = ((global::Gtk.AttachOptions)(4));
		this.Add (this.table3);
		if ((this.Child != null)) {
			this.Child.ShowAll ();
		}
		this.DefaultWidth = 1090;
		this.DefaultHeight = 343;
		this.Show ();
		this.DeleteEvent += new global::Gtk.DeleteEventHandler (this.OnDeleteEvent);
		this.entry2.Activated += new global::System.EventHandler (this.OnEntry2Activated);
	}
}
