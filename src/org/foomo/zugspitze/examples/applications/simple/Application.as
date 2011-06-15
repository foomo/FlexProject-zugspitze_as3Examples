package org.foomo.zugspitze.examples.applications.simple
{
	import org.foomo.zugspitze.examples.applications.simple.controllers.ApplicationController;
	import org.foomo.zugspitze.examples.applications.simple.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.simple.views.ApplicationView;
	import org.foomo.zugspitze.apps.SpriteApplication;

	import flash.events.Event;

	public class Application extends SpriteApplication
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function Application()
		{
			super();
			this.viewClass = ApplicationView;
			this.modelClass = ApplicationModel;
			this.controllerClass = ApplicationController;
			this.addEventListener(Event.ENTER_FRAME, this.enterFrameHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public static application singleton
		//-----------------------------------------------------------------------------------------

		public static function get application():Application
		{
			return Application(_zugspitze.application)
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function enterFrameHandler(event:Event):void
		{
			this.removeEventListener(Event.ENTER_FRAME, this.enterFrameHandler);
			ApplicationController(this.controller).initialize();
		}
	}
}