package org.foomo.zugspitze.examples.applications.simple.views
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldType;

	public class ApplicationView extends Sprite
	{
		//-----------------------------------------------------------------------------------------
		// ~ Includes
		//-----------------------------------------------------------------------------------------

		include 'ViewInclude.as';

		//-----------------------------------------------------------------------------------------
		// ~ Components
		//-----------------------------------------------------------------------------------------

		private var _textInput:TextField;

		private var _textField:TextField;

		private var _button:Sprite;

		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function ApplicationView()
		{
			super();
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function init():void
		{
			this.graphics.beginFill(0xffffff);
			this.graphics.drawRect(0, 0, 200, 110);

			this._textInput = new TextField;
			this._textInput.type = TextFieldType.INPUT
			this._textInput.width = 200;
			this._textInput.height = 30;
			this.addChild(this._textInput);


			this._button = new Sprite();
			this._button.graphics.beginFill(0xff0000);
			this._button.graphics.drawRect(0, 0, 100, 20);
			this._button.useHandCursor = this._button.buttonMode = true;
			this._button.addEventListener(MouseEvent.CLICK, this.button_clickHandler);
			this._button.x = 50;
			this._button.y = 50;
			this.addChild(this._button);


			this._textField = new TextField;
			this._textField.width = 200;
			this._textField.height = 30;
			this._textField.y = 80;
			this.addChild(this._textField);

			this.center();

			this.model.addEventListener("messageChanged", this.model_messageChangedHandler);
		}

		private function center():void
		{
			this.x = (this.application.width - this.width) /2;
			this.y = (this.application.height - this.height) /2;
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function button_clickHandler(event:MouseEvent):void
		{
			this.controller.setText(this._textInput.text);
		}

		private function model_messageChangedHandler(event:Event):void
		{
			this._textField.text = this.model.message;
		}
	}
}