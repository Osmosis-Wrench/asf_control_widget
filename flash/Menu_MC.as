// by osmosis-wrench 2022
import gfx.managers.FocusHandler;

class Menu_MC extends MovieClip
{
	var OptionBox: MovieClip;
	var InfoBox: MovieClip;
	
	public function Menu_MC()
	{
		super();
		FocusHandler.instance.setFocus(this,0);
		var s = SpoofData();
		ReceiveData(s[0], s[1][0], s[1][0], s[1][1], s[1][2], s[1][3], s[1][4], s[1][5], s[1][6], s[1][7], s[1][8], s[1][9], s[1][10], s[1][11]);
	}
	
	function SpoofData():Object
	{
		var Arg0:Object = new Object();
		Arg0["NodeID"] = Math.random() * 100;
		Arg0["Title"] = "Test Animation Name";
		Arg0["CurrentSpeed"] = 1;
		Arg0["MaxSpeed"] = 5;
		
		var ArgN:Object = new Object();
		for (var i = 0; i < 12; i++){
			var o:Object = new Object();
			o["NodeID"] = Math.random() * 100;
			o["Title"] = "Title "+i;
			o["ImagePath"] = "NA";
			o["Description"] = "The description for Title "+1;
			ArgN[i] = o;
		}
		return [Arg0, ArgN]
	}
	function test(){
		//trace(1);
	}
	public function ReceiveData()
	{
		trace(InfoBox);
		this.OptionBox.test();
		for (var i = 1; i < arguments.length; i++){
			//trace(arguments[i]["NodeID"]);
		}
	}
}