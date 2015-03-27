//------------------------------------
// Transient Row Viewer
//------------------------------------
OutFileStream transientStream { filename = "tout"; }
DataViewer CaseRowViewer transientTrace {
	titleBody = " ";
	titleVars = { };
	variableList = {
		"time: ??.???? ",
		"Amb0.W : ???.?? = Air Flow",
		"HPC.Fl_O.Pt : ????.?? = Pt3",
		"HPC.Fl_O.Tt : ????.?? = Tt3",
		"LPshaft.Nmech : ??????.?? = LPspeed",
	};
	pageWidth = 132;
	pageHeight = 0.;
	outStreamHandle = "transientStream";
}
//------------------------------------
// Call to Viewer
//------------------------------------
solver.postExecutionSequence = { "transientTrace" }; //CaseViewer function
  //^executes after solver convergence at each time step
  // storing variable history in memory
run();
transientTrace.display(); //only dump variables to file after execution to reduce slow file I/O