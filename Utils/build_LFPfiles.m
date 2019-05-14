useLFPchannels = [2;2;2;2;2;4;4;4;4;4;3;3;3;2;2;2;2;4;4;4;4;4;4;4;2;2;2;2;4;4;4;4;3;3;3;3;2;2;2;2;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;4;2;4;4;4;4;4;2;2;2;2;2;2;2;2;2;4;4;2;3;4;1;3;3;1;1;1;1;1;1;1;1;1;4;4;4;4;4;4;4;1;1;1;4;4;4;4;4;4;4;4;2;2;2;2;2;2;2;2;1;3;3;3;3;3;3];
LFPfiles = {};
for iNeuron = 1:numel(analysisConf.neurons)
    neuronName = analysisConf.neurons{iNeuron};
    [electrodeName,electrodeSite,electrodeChannels] = getElectrodeInfo(neuronName);
    LFPfiles{iNeuron} = analysisConf.sessionConfs{iNeuron,1}.sevFiles{electrodeChannels(useLFPchannels(iNeuron))};
end