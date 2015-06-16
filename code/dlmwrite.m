inputFile = 'NPSS_setpoint.input'; %name of input file to be written
inputPath = '..\path2folder\'; %path to write to

setpointVector = [10000.0, 10952.381, 11904.762, 12857.143, 13809.5238, 
              14761.9048, 15714.2857, 16666.6667, 17619.0476, 18571.4286,
              19523.8095, 20476.1905, 21428.5714, 22380.9524, 23333.3333,
              24285.7143, 25238.0952, 26190.4762, 26500.0000];

minS = min(setpointVector);
maxS = max(setpointVector);
fileID = fopen([inputPath inputFile],'w');
fprintf(fileID,'%% setpoints between %10.4f and %10.4f \n',minS,maxS);
dlmwrite([inputPath inputFile],'real Fn_targets[]={','delimiter','','-append')
dlmwrite([inputPath inputFile],setpointVector,'-append')
dlmwrite([inputPath inputFile],'};','-append','delimiter','')
fclose(fileID);