import flash.display.DisplayObject;

import org.foomo.zugspitze.as3.applications.simple.Application;
import org.foomo.zugspitze.as3.applications.simple.controllers.ApplicationController;
import org.foomo.zugspitze.as3.applications.simple.models.ApplicationModel;
import org.foomo.zugspitze.as3.applications.simple.views.ApplicationView;
import org.foomo.zugspitze.core.ZugspitzeView;

/**
 * @private
 */
public var application:org.foomo.zugspitze.as3.applications.simple.Application = org.foomo.zugspitze.as3.applications.simple.Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
public var view:org.foomo.zugspitze.as3.applications.simple.views.ApplicationView;

/**
 * @private
 */
public var model:org.foomo.zugspitze.as3.applications.simple.models.ApplicationModel;

/**
 * @private
 */
public var controller:org.foomo.zugspitze.as3.applications.simple.controllers.ApplicationController;

