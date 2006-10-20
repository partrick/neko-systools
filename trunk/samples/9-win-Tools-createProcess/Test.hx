/**
 * systools.Win.Tools.createProcess
 *
 */  

import systools.Registry;

class Test {
		
	static function main() {
		var os = neko.Sys.systemName();
		var args = "Test.hx";
		var app = "C:\\Windows\\Notepad.exe";
		var workingdir = neko.Sys.getCwd();
		
		trace("Launching "+app+", args: "+args+", working dir: "+workingdir);
		
		// Launch application:			
		var result = systools.Win.Tools.createProcess
			( app			// app. path
			, args			// app. args
			, workingdir	// app. working directory
			, false		// do not hide the window
			, false		// do not wait for the application to terminate
			);
		// Show result:
		trace
			( 	if (result==0)	"Successfuly launched application"
				else			"Failed launching application. Error code: "+result
			);		
	}
}
