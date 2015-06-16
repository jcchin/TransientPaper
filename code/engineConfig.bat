commandLine = "-I. -I C:/path/NPSS_dir/bin";
commandLine += " -I C:/path/NPSS_dir/InterpIncludes";
commandLine += " -I C:/path/NPSS_dir/InterpComponents";
commandLine += " -I C:/path/NPSS_dir/DLMComponents/nt";
commandLine += " -I C:/path/NPSS_dir/MetaData";
commandLine += " -I C:/path2/NPSSengine/run";
commandLine += " -I C:/path2/NPSSengine/src";
commandLine += " -I C:/path2/NPSSengine/maps";
commandLine += " C:/path2/NPSSengine/run/engine.run -DFlag1 -DFlag2";

SimulinkInPortMapper inPort1 { 
   vars = {  "Burner.Wfuel" }
}

timeStep = 0.02;

SimulinkOutPortMapper outPort1 {
	vars = {  
	"LP_Shaft.Nmech", "HP_Shaft.Nmech", "FS_3.Ps", "FS_4.Pt", "FS_9.Tt"
	} 
}

SimulinkOutPortMapper outPort2 {
	vars = { 
    "Perf.myEPR", "Perf.myFn", "Perf.Wfuel", "HPC.SMN", "HPC.SMW"
    } 
}