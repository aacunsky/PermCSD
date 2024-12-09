function [stimList, thisUnit, stimDur] = StimVariableMAG(Condition,sr_mult)

% for the various scripts that need this information dynamically, this
% function reads the current stim type and produces consistant variable
% data across the pipeline

% sr_mult variable let's us control the sampling rate for CSD and Spike
% output. CSD is consistently set at sr 1000 / sr_mult = 1. Spiking data
% currently set to sr 3000 / sr_mult = 3.

if ~exist('sr_mult','var')
    sr_mult = 1; % 1k sampling rate
end

% for each kind of stimulus, set the parameters, what stim list you want to
% compare, what the unit it (for figures), and what the stimulus duration
% is (for total size). 

if matches(Condition,'NoiseBurst') || ...
        matches(Condition,'postNoise') || ...
        matches(Condition, 'PostNoiseBurst')
    stimList = [20 70]; % dB broadband noise
    thisUnit = 'dB';
    stimDur  = 100*sr_mult; % stimulus is 100 ms long

elseif matches(Condition,'Tonotopy')
    stimList = [1, 2, 4, 8, 16, 24, 32]; % kHz tones
    thisUnit = 'kHz';
    stimDur  = 200*sr_mult; % stimulus is 200 ms long

elseif matches(Condition,'gapASSR')
    stimList = [2, 4, 6, 8, 10];
    thisUnit = ' [ms] gap width';
    stimDur  = 3250*sr_mult; % stimulus is 3250 ms long

end