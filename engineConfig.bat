commandLine = "-I. -I C:/path/NPSS_dir/bin";
commandLine += " -I C:/path/NPSS_dir/InterpIncludes";
commandLine += " -I C:/path/NPSS_dir/InterpComponents";
commandLine += " -I C:/path/NPSS_dir/DLMComponents/nt";
commandLine += " -I C:/path/NPSS_dir/MetaData";
commandLine += " -I C:/path2/NPSSengine/run";
commandLine += " -I C:/path2/NPSSengine/src";
commandLine += " -I C:/path2/NPSSengine/maps";
commandLine += " C:/path2/NPSSengine/run/engine.run -DFlag1 -DFlag2";

SimulinkInPortMapper inPort0 { 
   vars = {  "Burner.Wfuel" }
}

SimulinkOutPortMapper outPort0 {
   vars = { "LP_Shaft.Nmech", "HP_Shaft.Nmech", "FS_3.Ps", "FS_3.Pt", "FS_3.Tt" } 
}

SimulinkOutPortMapper outPort1 {
	vars = { "Perf.myEPR", "Perf.myFn", "Perf.Wfuel", "HPC.SMN", "HPC.SMW" }
}

// Specify the list of continuous states to be directly manipulated
// by Simulink here. These must be NPSS variable names.
// NOTE: if your NPSS model has its own internal integrators it will be
// treated as a discrete model, so do NOT export any continuous states or
// derivatives to Simulink.

states = { "foo", "bar" };
// Specify initial values for the states here (size must match size of 'states')
initialValues = { 0.0, 0.0 };
// Specify names of derivative expressions here.
//(size must equal size of 'states' array)
derivatives = { "fooprime", "barprime" };