/*
 * This file is part of the foomo Opensource Framework.
 *
 * The foomo Opensource Framework is free software: you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public License as
 * published  by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The foomo Opensource Framework is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with
 * the foomo Opensource Framework. If not, see <http://www.gnu.org/licenses/>.
 */
package org.foomo.zugspitze.as3.applications.simple.views
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldType;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
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