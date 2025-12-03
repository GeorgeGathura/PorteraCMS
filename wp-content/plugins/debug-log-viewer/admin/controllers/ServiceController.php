<?php

namespace DebugLogViewer\Admin\Controllers;

if (!defined('ABSPATH')) {
	exit; // Exit if accessed directly
}

use DebugLogViewer\Admin\Controllers\LogController;

class ServiceController {


	public static function deactivationHandler() {
		$notificator = new AlertController();

		if ($notificator->isEnabled()) {
			( new LogController() )->deleteWpScheduleEvent($notificator->buildUniqueEventName());
		}

		wp_unschedule_hook(LogController::SCHEDULE_MAIL_SEND);
		delete_option(LiveUpdatesController::DEBUG_LOG_LAST_FILESIZE);
	}

	public static function uninstallHandler() {
		// The same as deactivation for now
		self::deactivationHandler();
	}
}
