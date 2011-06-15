package org.foomo.zugspitze.examples.applications.simple.controllers
{
	import org.foomo.zugspitze.examples.applications.simple.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.simple.views.ApplicationView;
	import org.foomo.zugspitze.core.ZugspitzeController;

	public class ApplicationController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialization
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
			this.view.init();

			this.model.message = 'Please insert text above';
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function setText(value:String):void
		{
			this.model.message = value;
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private methods
		//-----------------------------------------------------------------------------------------

		private function get view():ApplicationView
		{
			return ApplicationView(this.zugspitze.view);
		}

		private function get model():ApplicationModel
		{
			return ApplicationModel(this.zugspitze.model);
		}
	}
}