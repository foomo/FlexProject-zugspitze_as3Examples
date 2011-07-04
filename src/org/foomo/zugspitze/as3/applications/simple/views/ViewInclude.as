import org.foomo.zugspitze.as3.applications.simple.Application;
import org.foomo.zugspitze.as3.applications.simple.controllers.ApplicationController;
import org.foomo.zugspitze.as3.applications.simple.models.ApplicationModel;
import org.foomo.zugspitze.as3.applications.simple.views.ApplicationView;
import org.foomo.zugspitze.core.ZugspitzeView;

import flash.display.DisplayObject;

/**
 * @private
 */
public var application:Application = Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
public var view:ApplicationView;

/**
 * @private
 */
public var model:ApplicationModel;

/**
 * @private
 */
public var controller:ApplicationController;

