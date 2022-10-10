// by osmosis-wrench 2022
import skse;

class Option_Box_MC extends MovieClip
{
	var o0 : MovieClip;
	var o1 : MovieClip;
	var o2 : MovieClip;
	var o3 : MovieClip;
	var o4 : MovieClip;
	var o5 : MovieClip;
	var o6 : MovieClip;
	var o7 : MovieClip;
	var o8 : MovieClip;
	var o9 : MovieClip;
	var o10 : MovieClip;
	var o11 : MovieClip; 
	
	var Options: Array = new Array(12);
	
	public function Option_Box_MC()
	{
		super();
		Options = [o0, o1, o2, o3, o4, o5, o6, o7, o8 ,o9 , o10, o11];
		
		for (var i in Options){
			Options[i].onRollOver = function(){
				this.OnHighlight();
			}
			Options[i].onMouseDown = function(){
				if (Mouse.getTopMostEntity() == this)
				{
					this.OnSelect
				}
			}
		}
	}
	
	function test(){
		trace(1);
	}
	
	function SendTransitionRequest(NodeID:Number)
	{
		skse.SendModEvent("ASFTransitionRequest", null, NodeID);
	}
	
	function SendSpeedRequest(SpeedIdx:Number)
	{
		skse.SendModEvent("ASFSpeedRequest", null, SpeedIdx);
	}
	
	function AssignData(Edges:Object)
	{
		for(var i:Number = 0; i < Edges.length; i++){
			Options[i].SetData(Edges[i]);
		}
	}
}