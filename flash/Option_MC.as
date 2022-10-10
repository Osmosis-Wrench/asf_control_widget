// by osmosis-wrench 2022
import com.greensock.*;

class Option_MC extends MovieClip
{
	var _w: Number;
	var _h: Number;
	
	var NodeID :Number;
  	var Title :String;
  	var ImagePath :String;
  	var Description :String;
	var NodeInfoBox: MovieClip;
	
	public function Option_MC()
	{
		super();
		
		_w = this._width;
		_h = this._height;
		NodeInfoBox = _parent._parent.NodeInfoBox;
	}
	
	// Public Functions
	public function OnHighlight()
	{
		trace(this);
		NodeInfoBox.AssignData({Title: Title, Description: Description});
	}
	
	public function OnSelect()
	{
		
	}
	
	public function SetData(Node:Object)
	{
        NodeID = Node["NodeID"];
        Title = Node["Title"];
        ImagePath = Node["ImagePath"];
        Description = Node["Description"];
	}
	
	public function ShowOption()
	{
		
	}
	
	public function HideOption()
	{
		
	}
	
	// Private Functions
	
}