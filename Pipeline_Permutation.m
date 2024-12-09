% Pipeline for Permutation Clustermass Analysis with Boundaries

% This includes scripts and input specific to this analysis. Please site if
% used: 

%% Get started

clear; clc;

% set working directory; change for your station
if exist('E:\PermCSD','dir')
    cd('E:\PermCSD'); 
elseif exist('D:\PermCSD','dir')
    cd('D:\PermCSD'); 
else
    error('add your local repository as shown above')
end
homedir = pwd;
addpath(genpath(homedir));
set(0, 'DefaultFigureRenderer', 'painters');

% set input variables  
LayerList       = {'II','IV','Va','Vb','VI'}; 
ConditionList   = {'NoiseBurst','gapASSR'}; 
BL              = 399; % stim starts on ms 400 (1k sampling rate)
Groups          = {'TWT','TKO'};
yespermute      = 1; % 1 for yes, 0 for no
whichtest       = 'Power'; % 'Phase' and 'STP' (single trial power) also available

% NOTE!! group meta data files (*grpname*.m) need to be updated. 
% StimVariableCWT.m needs to be updated. 

%% run permutation analysis
% Input:    Home directory, 
%           whichtest = 'Power' or 'Phase'
%           BL = 399; 
%           ConditionList = {'NoiseBurst'}
%           LayerList = {'IV','Va'}
%           Groups = {'GR1','GR2'}
%           yespermute = 1; 1 for permutation, 0 for no permutation. In
%           that case, only observed data figures will be generated. 

% specifying STP: The is Single Trial Power. Power is taken per trial,
%           and then averaged after. 
% specifying Power: The is Trial-Averaged Power. (potato potAto)
% specifying Phase: phase is taken per trial and then coherence across
%           trials is calculated

% Student's t test and Cohen'd d effect size are the stats used for 
% observed and permutation difference

% Other input: StimVariableMAG.m (edit this for your stimulus). group files
%               (edit these for your data). Functions: mymontecarlo.m
%               getphaseout.m, getpowerout.m, CWTStats.m, givetThresh.m, 

% Output:   Figures for means and observed difference of comparison;
%           figures for observed t values, clusters
%           output; if yespermute == 1, oberseved difference figure will
%           include permutation result overlay. White is significant, black
%           is not significant. NOTE that there are no numbers associated
%           with this type of output, the boundaries are either accepted or
%           not. Currently anyway.
PermutationTest_Area(homedir,'Power',ConditionList,LayerList,Groups,yespermute)


