﻿package
{
	import F4SE.XSE;
	import System.Diagnostics.Debug;
	import System.Diagnostics.Utility;
	import System.Display;
	import System.UI.MenuDynamic;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.events.Event;
	import mx.utils.DisplayUtil;

	public class CodeClient extends MenuDynamic
	{
		// Initialize
		//---------------------------------------------

		public function CodeClient()
		{
			Debug.Prefix = "System:UI:Code";
			super();
			Debug.WriteLine("\n\n");
			Debug.WriteLine("[CodeClient]", "(CTOR)");
		}


		protected override function OnAddedToStage(e:Event):void
		{
			super.OnAddedToStage(e);

			try
			{
				if(Root.Menu_mc != null)
				{
					Dump();
					DumpMenu(Root.Menu_mc);
				}
				else if (Root.AnimHolder_mc != null) // console menu
				{
					Root.AnimHolder_mc.Menu_mc.CommandHistory.y = -700;
					Root.AnimHolder_mc.Menu_mc.CommandHistory.height = 600;
					Dump();
					DumpMenu(Root.AnimHolder_mc.Menu_mc);
				}
				else if (Root.ScopeMenuInstance != null) // scope menu
				{
					Dump();
					DumpMenu(Root.ScopeMenuInstance);
				}
			}
			catch (error:Error)
			{
				Debug.WriteLine("[CodeClient]", "(OnAddedToStage)", "Exception", String(error));
			}
		}


		protected override function Dump():void
		{
			super.Dump();
			Debug.WriteLine("[CodeClient]", "(Dump)", "------------------------------");
			Debug.WriteLine("[CodeClient]", "(Dump)", "Instance:", Display.GetInstanceFrom(this, Root));

			Debug.WriteLine("[CodeClient]", "(Dump)", "TraceDisplayList");
			Utility.TraceDisplayList(Root);

			Debug.WriteLine("[CodeClient]", "(Dump)", "XSE", "TraceObject");
			Utility.TraceObject(XSE.API);
		}


		private function DumpMenu(menu:MovieClip):void
		{
			if (menu != null)
			{
				if (menu.BGSCodeObj != null) // TODO: this only works on console menu
				{
					Debug.WriteLine("[CodeClient]", "(DumpMenu)", "BGSCodeObj", "TraceObject");
					Utility.TraceObject(menu.BGSCodeObj);
				}
			}
		}


	}
}
