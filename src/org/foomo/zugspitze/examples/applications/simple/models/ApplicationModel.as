package org.foomo.zugspitze.examples.applications.simple.models
{
	import org.foomo.zugspitze.core.ZugspitzeModel;

	import flash.events.Event;

	[Event(name="messageChanged", type="flash.events.Event")]

	public class ApplicationModel extends ZugspitzeModel
	{
		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		/**
		 *
		 */
		private var _message:String

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		/**
		 *
		 */
		public function set message(value:String):void
		{
			if (this._message !== value) {
				this._message = value;
				this.dispatchEvent(new Event('messageChanged'));
			}
		}
		public function get message():String
		{
			return this._message;
		}
	}
}