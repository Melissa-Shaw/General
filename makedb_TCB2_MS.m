% Script to construct metafile with important recording parameters

% Output fields of metafile:
% db.animal - animal ID with Mdate_researcher or Mdate_animal_researcher
% db.age = age of amimal on recordimg date in days
% db.weight = weight of animal in grams on recording day
% db.sex = sex of animal
% db.dir - file path to kilosort directory
% db.nChans - number of channels in format: channels prior to spikesorting, analogue input (0/1), channels after spikesorting
% db.cond - indices of baseline conditions corresponding to data files in stitched recording
% db.breakmin - time in minutes between each recording stage
% db.injection - recording condition labels
% db.anaesthetic - notes about amount and time of anaesthetic given
% db.lfp - channels used for lfp analysis
% db.notes - any additional comments about the recording
% db.pupil - file paths to analysed pupil data
% db.drinking - drinking time in minutes
% db.dose - dose of TCB-2 given in mg/kg
% db.controldose - amount of control solution given in ml
% db.surfacedepth - depth in uM at the surface of the brain
% db.NIDQ - file path to recording of photodiode signal in visual stimulation
% db.LFPdir - file path to directory of LFP data
% db.date - date of recording
% db.filename - filename if concatenated or probe 1 ot 2 from split files
% db.exp - Number of experiment
% db.dataPoints - number of bits in each stitched file (2*db.nChans*SR)
% db.breakms - time in milliseconds between each recording stage
% db.DurationS - cumulative number of seconds at each stitch point
% db.timepointsbreaksms - time in ms of start of each condition
% db.timepointsms - cumulative time in ms for each recording stage
% db.syringe_label = blind label on syringe
% db.syringe_contents = contents of syringe
% db.ref = referencing configuration
% db.LFPgain = LFP gain setting used
% db.HTR = Head Twitch Resonse seen in 3x3 minute observations after recording
% db.location = location of probe, PFC or V1

% Applies to all
dataDir = 'E:\Data\'; % Top directory for MS data
neuropixDir = 'E:\Data\'; % Top directory for MS data
topDir = 'X:\cortical_dynamics\User\ms1121\Code\'; % Top directory for MS analysis
SR = 3e4; % sampling rate for spiking NP1
dbID = 'TCB2';
db = [];

% Database

i = 0;

% M190107_BD

i = i+1; % i = 1

db(i).animal = 'M190107_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190107_BD\experiment1\Stitched';
db(i).nChans = {32,0}; % number of channels in format {channels prior to spikesorting, analogue input(0/1), channels after spikesorting}
db(i).cond = [1 3];
db(i).breakmin = {2,2};
db(i).injection = {'Saline', 'Saline', 'TCB-2', 'End'};
db(i).anaesthetic = {'Anaesthetic(0.1ml) given 8 mins prior to first injection',[],[],[]} ;
db(i).lfp = 1;
db(i).notes = {'Artefact in first saline condition'};
db(i).location = [];

% M190108_BD

i = i+1; % i = 2

db(i).animal = 'M190108_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190108_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {5,3};
db(i).injection = {'Saline', 'Saline', 'TCB-2', 'End'}; % Corresponds to the injections given at db(i).timepointsms
db(i).anaesthetic = {'Anaesthetic (0.15ml) given 13 mins prior to first injection',[],[],[]};
db(i).lfp = 1;
db(i).location = [];

% M190109_BD

i = i+1; % i = 3

db(i).animal = 'M190109_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190109_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {18,14};
db(i).injection = {'Saline', 'TCB-2', 'Saline', 'End'}; % Corresponds to the injections given at db(i).timepointsms
db(i).anaesthetic = {'Anaesthetic (0.15ml) given 40 mins prior to injection 1',[],[],[]};
db(i).lfp = 1;
db(i).location = [];

% M190110_BD

i = i+1; % i = 4

db(i).animal = 'M190110_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190110_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1,14};
db(i).injection = {'Saline', 'TCB-2', 'Saline', 'End'}; % Corresponds to the injections given at db(i).timepointsms
db(i).anaesthetic = {'Anaesthetic (0.15ml) given 31 mins prior to injection 1',[],'Anaesthetic (0.15ml) given 11 mins prior to injection 3',[]} ;
db(i).lfp = 2;
db(i).location = [];

% M190128_BD

i = i+1; % i = 5

db(i).animal = 'M190128_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190128_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'}; % Corresponds to the injections given at db(i).timepointsms
db(i).anaesthetic = {'Anaesthetic (0.15ml) given 5 mins prior to recording 1',[],[],[]} ;
db(i).lfp = 1;
db(i).location = [];

% M190129_BD

i = i+1; % i = 6

db(i).animal = 'M190129_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190129_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).anaesthetic = {[],[],'Dialled down anaesthetic to 1%',[]};
db(i).lfp = 6;
db(i).location = [];

% M190204_BD

i = i+1; % i = 7

db(i).animal = 'M190204_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190204_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {2,5};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).anaesthetic = {[],'Dialled up anaesthetic to 1%',[],[]};
db(i).lfp = 3;
db(i).location = [];

% M190211_BD

i = i+1; % i = 8

db(i).animal = 'M190211_BD';
db(i).dir = 'R:\CSN\Shared\Dynamics\Data\M190211_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {2,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};

db(i).lfp = 2;
db(i).location = [];

% M190213_BD

i = i+1; % i = 9
db(i).animal = 'M190213_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190213_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 2;
db(i).location = [];

% M190214_BD

i = i+1; % i = 10

db(i).animal = 'M190214_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190214_BD\experiment1\Stitched';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {2,3,3};
db(i).injection = {'No injection', 'Saline', 'TCB-2','TCB-2 (part 2)', 'End'};
db(i).anaesthetic = {[],[],[],[],[]};
db(i).lfp = 1;
db(i).notes = {'2 TCB recordings merged'};
db(i).location = [];

% M190227_BD

i = i+1; % i = 11

db(i).animal = 'M190227_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190227_BD\experiment1\Stitched';
db(i).nChans = {64,0};
db(i).cond = [1 3];
db(i).breakmin = {2,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 1;
db(i).location = [];

% M190305_BD probe 1

i = i+1; % i = 12

db(i).animal = 'M190305_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190305_BD\experiment1\Stitched64';
db(i).nChans = {64,0};
db(i).cond = [1 3];
db(i).breakmin = {1,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 4;
db(i).location = [];

% M190305_BD probe 2

i = i+1; % i = 13

db(i).animal = 'M190305_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190305_BD\experiment1\Stitched32';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 1;
db(i).location = [];

% M190328_BD

i = i+1; % i = 14

db(i).animal = 'M190328_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190328_BD\experiment1\Stitched';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {8,5};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 1;
db(i).pupil = {[dataDir db(i).animal '\experiment1\video_41114_processed.mat'],...
    [dataDir db(i).animal '\experiment1\video_43808_processed.mat'],...
    [dataDir db(i).animal '\experiment1\video_45533_processed.mat']};
db(i).location = [];

% M190515_BD

i = i+1; % i = 15

db(i).animal = 'M190515_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190515_BD\experiment1\Stitched';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {9,5};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 2;
db(i).pupil = {[dataDir db(i).animal '\experiment1\video_51252_processed.mat'],...
    [dataDir db(i).animal '\experiment1\video_52527_processed.mat'],...
    [dataDir db(i).animal '\experiment1\video_53600_processed.mat']};
db(i).location = [];


% M190523_A_MD\240619 cortex

i = i+1; % i = 16

db(i).animal = 'M190523_A_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_A_MD\BD\240619\experiment1\Cortex17';
db(i).filename = 'concatenatedData_probe2.dat';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {5,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\240619\experiment1\video_68114_processed.mat'],...
    [dataDir db(i).animal '\240619\experiment1\video_69096_processed.mat'],...
    [dataDir db(i).animal '\240619\experiment1\video_69993_processed.mat']};
db(i).location = [];

% M190523_A_MD\240619 hippocampus

i = i+1; % i = 17

db(i).animal = 'M190523_A_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_A_MD\BD\240619\experiment1\Hippocampus30\bottomflip';
db(i).filename = 'concatenatedData_probe1.dat';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {5,2};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 5;
db(i).pupil = {[dataDir db(i).animal '\240619\experiment1\video_68114_processed.mat'],...
    [dataDir db(i).animal '\240619\experiment1\video_69096_processed.mat'],...
    [dataDir db(i).animal '\240619\experiment1\video_69993_processed.mat']};
db(i).location = [];

% M190523_A_MD\250619 cortex

i = i+1; % i = 18

db(i).animal = 'M190523_A_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_A_MD\BD\250619\experiment1\Cortex17';
db(i).filename = 'concatenatedData_probe2.dat';
db(i).nChans = {15,1};
db(i).cond = [1 3];
db(i).breakmin = {2,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\250619\experiment1\video_65822_processed.mat'],...
    [dataDir db(i).animal '\250619\experiment1\video_66757_processed.mat'],...
    [dataDir db(i).animal '\250619\experiment1\video_67439_processed.mat']};
db(i).location = [];

% M190523_A_MD\250619 hippocampus

i = i+1; % i = 19

db(i).animal = 'M190523_A_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_A_MD\BD\250619\experiment1\Hippocampus30\bottomflip';
db(i).filename = 'concatenatedData_probe1.dat';
db(i).nChans = {32,0,30};
db(i).cond = [1 3];
db(i).breakmin = {2,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 5;
db(i).pupil = {[dataDir db(i).animal '\250619\experiment1\video_65822_processed.mat'],...
    [dataDir db(i).animal '\250619\experiment1\video_66757_processed.mat'],...
    [dataDir db(i).animal '\250619\experiment1\video_67439_processed.mat']};
db(i).location = [];

% M190523_A_MD\270619 cortex

i = i+1; % i = 20

db(i).animal = 'M190523_A_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_A_MD\BD\270619\experiment1\Stitched17';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\270619\experiment1\video_66449_processed.mat'],...
    [dataDir db(i).animal '\270619\experiment1\video_67145_processed.mat'],...
    [dataDir db(i).animal '\270619\experiment1\video_67931_processed.mat']};
db(i).location = [];

% M190523_A_MD\080719 cortex

i = i+1; % i = 21

db(i).animal = 'M190523_A_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_A_MD\BD\080719\experiment1\Stitched17';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {5,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\080719\experiment1\video_65856_processed.mat'],...
    [dataDir db(i).animal '\080719\experiment1\video_67002_processed.mat'],...
    [dataDir db(i).animal '\080719\experiment1\video_67671_processed.mat']};
db(i).location = [];

% M190523_B_MD\260619 cortex

i = i+1; % i = 22

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\260619\experiment1\Cortex17';
db(i).filename = 'concatenatedData_probe2.dat';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\260619\experiment1\video_48184_processed.mat'],...
    [dataDir db(i).animal '\260619\experiment1\video_48922_processed.mat'],...
    [dataDir db(i).animal '\260619\experiment1\video_49682_processed.mat']};
db(i).location = [];

% M190523_B_MD\260619 hippocampus

i = i+1; % i = 23

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\260619\experiment1\Hippocampus32\bottomflip';
db(i).filename = 'concatenatedData_probe1.dat';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 23;
db(i).pupil = {[dataDir db(i).animal '\260619\experiment1\video_48184_processed.mat'],...
    [dataDir db(i).animal '\260619\experiment1\video_48922_processed.mat'],...
    [dataDir db(i).animal '\260619\experiment1\video_49682_processed.mat']};
db(i).location = [];

% M190523_B_MD\270619 cortex

i = i+1; % i = 24

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\270619\experiment1\Cortex';
db(i).filename = 'concatenatedData_probe2.dat';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\270619\experiment1\video_47926_processed.mat'],...
    [dataDir db(i).animal '\270619\experiment1\video_48654_processed.mat'],...
    [dataDir db(i).animal '\270619\experiment1\video_49433_processed.mat']};
db(i).location = [];

% M190523_B_MD\270619 hippocampus

i = i+1; % i = 25

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\270619\experiment1\Stitched32';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 23;
db(i).pupil = {[dataDir db(i).animal '\270619\experiment1\video_47926_processed.mat'],...
    [dataDir db(i).animal '\270619\experiment1\video_48654_processed.mat'],...
    [dataDir db(i).animal '\270619\experiment1\video_49433_processed.mat']};
db(i).location = [];

% M190523_B_MD\280619 cortex

i = i+1; % i = 26

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\280619\experiment1\Cortex';
db(i).filename = 'concatenatedData_probe2.dat';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\280619\experiment1\video_46317_processed.mat'],...
    [dataDir db(i).animal '\280619\experiment1\video_47065_processed.mat'],...
    [dataDir db(i).animal '\280619\experiment1\video_47812_processed.mat']};
db(i).location = [];

% M190523_B_MD\280619 hippocampus

i = i+1; % i = 27

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\280619\experiment1\Stitched29';
db(i).nChans = {29,0};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 20;
db(i).pupil = {[dataDir db(i).animal '\280619\experiment1\video_46317_processed.mat'],...
    [dataDir db(i).animal '\280619\experiment1\video_47065_processed.mat'],...
    [dataDir db(i).animal '\280619\experiment1\video_47812_processed.mat']};
db(i).location = [];

% M190523_B_MD\090719 cortex

i = i+1; % i = 28

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\090719\experiment1\Cortex17';
db(i).filename = 'concatenatedData_probe2.dat';
db(i).nChans = {16,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 7;
db(i).pupil = {[dataDir db(i).animal '\080719\experiment1\video_65856_processed.mat'],...
    [dataDir db(i).animal '\080719\experiment1\video_67002_processed.mat'],...
    [dataDir db(i).animal '\080719\experiment1\video_67671_processed.mat']};
db(i).location = [];

% M190523_B_MD\090719 hippocampus

i = i+1; % i = 29

db(i).animal = 'M190523_B_MD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190523_B_MD\BD\090719\experiment1\Hippocampus32\bottomflip';
db(i).filename = 'concatenatedData_probe1.dat';
db(i).nChans = {32,0};
db(i).cond = [1 3];
db(i).breakmin = {1,1};
db(i).injection = {'No injection', 'Saline', 'TCB-2', 'End'};
db(i).lfp = 23;
db(i).pupil = {[dataDir db(i).animal '\280619\experiment1\video_46317_processed.mat'],...
    [dataDir db(i).animal '\280619\experiment1\video_47065_processed.mat'],...
    [dataDir db(i).animal '\280619\experiment1\video_47812_processed.mat']};
db(i).location = [];

% M190508_B_BD\100719

i = i+1; % i = 30

db(i).animal = 'M190508_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190508_B_BD\100719\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {2};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 4;
db(i).location = [];

% M190508_A_BD\100719

i = i+1; % i = 31

db(i).animal = 'M190508_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190508_A_BD\100719\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {2};
db(i).injection = {'No injection', 'Saline', 'End'};
db(i).lfp = 23;
db(i).location = [];

% M190508_B_BD\110719

i = i+1; % i = 32

db(i).animal = 'M190508_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190508_B_BD\110719\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'Saline', 'End'};
db(i).lfp = 5;
db(i).location = [];

% M190508_A_BD\120719

i = i+1; % i = 33

db(i).animal = 'M190508_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190508_A_BD\120719\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 23;
db(i).pupil = {[dataDir db(i).animal '\120719\experiment1\video_64502_processed.mat'],...
    [dataDir db(i).animal '\120719\experiment1\video_66377_processed.mat']};
db(i).location = [];

% M190508_A_BD\250719

i = i+1; % i = 34

db(i).animal = 'M190508_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190508_A_BD\250719\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 4;
db(i).pupil = {[dataDir db(i).animal '\250719\experiment1\video_49912_processed.mat'],...
    [dataDir db(i).animal '\250719\experiment1\video_51686_processed.mat']};
db(i).location = [];

% M190508_B_BD\250719

i = i+1; % i = 35

db(i).animal = 'M190508_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190508_B_BD\250719\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 5;
db(i).pupil = {[dataDir db(i).animal '\250719\experiment1\video_65688_processed.mat'],...
    [dataDir db(i).animal '\250719\experiment1\video_67492_processed.mat']};
db(i).location = [];

% M190430_A_BD\050819

i = i+1; % i = 36

db(i).animal = 'M190430_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190430_A_BD\050819\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {7};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 18;
db(i).location = [];

% M190430_B_BD\090819

i = i+1; % i = 37

db(i).animal = 'M190430_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190430_B_BD\090819\experiment1\Stitched';
db(i).nChans = {32, 1};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 6;
db(i).location = [];

% M190731_A_BD\200819 - probe 1 (PFC)

i = i+1; % i = 38

db(i).exp = i;
db(i).animal = 'M190731_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_A_BD\200819\experiment1\StitchedPFC';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'Saline', 'End'};
db(i).lfp = 10;
db(i).location = [];

% M190731_A_BD\200819 - probe 2 (V1)

i = i+1; % i = 39

db(i).animal = 'M190731_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_A_BD\200819\experiment1\StitchedV1';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'Saline', 'End'};
db(i).lfp = 6;
db(i).location = [];

% M190731_B_BD\220819 - probe 1 (PFC)

i = i+1; % i = 40

db(i).animal = 'M190731_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_B_BD\220819\experiment1\StitchedPFC';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'Saline', 'End'};
db(i).lfp = 7;
db(i).location = [];

% M190731_B_BD\220819 - probe 2 (V1)

i = i+1; % i = 41

db(i).animal = 'M190731_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_B_BD\220819\experiment1\StitchedV1';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'Saline', 'End'};
db(i).lfp = 23;
db(i).location = [];

% M190731_A_BD\220819 - probe 1 (PFC)

i = i+1; % i = 42

db(i).animal = 'M190731_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_A_BD\220819\experiment1\StitchedPFC';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 10;
db(i).location = [];

% M190731_A_BD\220819 - probe 2 (V1)

i = i+1; % i = 43

db(i).animal = 'M190731_A_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_A_BD\220819\experiment1\StitchedV1';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 23;
db(i).location = [];

% M190731_B_BD\230819 - probe 1 (PFC)

i = i+1; % i = 44

db(i).animal = 'M190731_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_B_BD\230819\experiment1\StitchedPFC';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 10;
db(i).location = [];

% M190731_B_BD\230819 - probe 2 (V1)

i = i+1; % i = 45

db(i).animal = 'M190731_B_BD';
db(i).dir = 'E:\CSN\Shared\Dynamics\Data\M190731_B_BD\230819\experiment1\StitchedV1';
db(i).nChans = {32,0};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 20;
db(i).location = [];

% M190916_A_BD i.p. injection anasthetised

i = i+1; % i = 46

db(i).animal = 'M190916_A_BD';
db(i).dir = 'E:\Neuropix\Shared\Data\M190916_A_BD\Stitched';
db(i).nChans = {384, 1};
db(i).cond = [1 2];
db(i).breakmin = {2};
db(i).injection = {'Saline', 'TCB-2', 'End'};
db(i).lfp = 1:50:251;
db(i).dose = 10;
db(i).location = [];

% M190916_B_BD s.c. injection anasthetised

i = i+1; % i = 47

db(i).animal = 'M190916_B_BD';
db(i).dir = 'E:\Neuropix\Shared\Data\M190916_B_BD\Stitched';
db(i).nChans = {384,1};
db(i).cond = [1 2];
db(i).breakmin = {1};
db(i).injection = {'Saline', 'TCB-2', 'End'};
db(i).lfp = 1:50:251;
db(i).dose = 10;
db(i).location = [];

% % M190930_B_BD TCB-2

i = i+1; % i = 48

db(i).animal = 'M190930_B_BD';
db(i).date = '011119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 19; % drinking time in minutes
db(i).dose = 5;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\011119\video_64023\video_64023DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\011119\video_66192\video_66192DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M190930_B_BD Quinine

i = i+1; % i = 49

db(i).animal = 'M190930_B_BD';
db(i).date = '051119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'CONTROL - 0.5mM Quinine + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'Quinine', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 17;
db(i).dose = 0;
db(i).controldose = 0.15;
db(i).pupil = {[neuropixDir db(i).animal '\051119\video_51045\video_51045DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\051119\video_53199\video_53199DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M190930_A_BD Quinine

i = i+1; % i = 50

db(i).animal = 'M190930_A_BD';
db(i).date = '071119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'CONTROL - 0.5mM Quinine + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'Quinine', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 13;
db(i).dose = 0;
db(i).controldose = 0.2;
db(i).pupil = {[neuropixDir db(i).animal '\071119\video_49065\video_49065DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\071119\video_50922\video_50922DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).notes = 'for some reason this recording is short - 25 minutes pre and 34 minutes drinking and post';
db(i).location = 'PFC';

% M190930_A_BD TCB-2

i = i+1; % i = 51

db(i).animal = 'M190930_A_BD';
db(i).date = '081119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 18;
db(i).dose = 5;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\081119\video_54234\video_54234DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\081119\video_56438\video_56438DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191023_A_BD quinine

i = i+1; % i = 52

db(i).animal = 'M191023_A_BD';
db(i).date = '131119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'CONTROL - 0.5mM Quinine + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'Quinine', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 18;
db(i).dose = 0;
db(i).controldose = 0.2;
db(i).pupil = {[neuropixDir db(i).animal '\131119\video_48653\video_48653DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\131119\video_50880\video_50880DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';

% M191023_A_BD TCB-2

i = i+1; % i = 53

db(i).animal = 'M191023_A_BD';
db(i).date = '191119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0,3};
db(i).injection = {'No injection', 'TCB-2', 'TCB-2 part 2', 'End'};
db(i).lfp = 1:50:251;
db(i).notes = {'2 TCB recordings merged'};
db(i).drinking = 20;
db(i).dose = 14;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\191119\video_51156\video_51156DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\191119\video_53499\video_53499DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\191119\video_56100\video_56100DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191023_B_BD TCB-2

i = i+1; % i = 54

db(i).animal = 'M191023_B_BD';
db(i).date = '191119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection',  'TCB-2', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 19;
db(i).dose = 10;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\191119\video_69584\video_69584DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\191119\video_71796\video_71796DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191023_B_BD quinine

i = i+1; % i = 55
db(i).animal = 'M191023_B_BD';
db(i).date = '201119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'CONTROL - 0.5mM Quinine + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'Quinine', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 19;
db(i).dose = 0;
db(i).controldose = 0.22;
db(i).pupil = {[neuropixDir db(i).animal '\201119\video_59071\video_59071DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\201119\video_61265\video_61265DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191114_B_BD Quinine

i = i+1; % i = 56

db(i).animal = 'M191114_B_BD';
db(i).date = '261119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'CONTROL - 0.5mM Quinine + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'Quinine', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 25;
db(i).dose = 0;
db(i).controldose = 0.3;
db(i).pupil = {[neuropixDir db(i).animal '\261119\video_71257\video_71257DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\261119\video_73494\video_73494DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191114_B_BD TCB-2

i = i+1; % i = 57

db(i).animal = 'M191114_B_BD';
db(i).date = '271119';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).lfp = 1:50:251;
db(i).drinking = 25;
db(i).dose = 4.5;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\271119\video_66679\video_66679DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\271119\video_68877\video_68877DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191114_A_BD Quinine

% Animal M191114_A_BD removed due to no record of syringe contents

i = i+1; % i = 58

% db(i).animal = 'M191114_A_BD';
% db(i).dir = 'R:\Neuropix\Shared\Data\M191114_A_BD\291119\Stitched';
% db(i).nChans = {384,1};
% db(i).breakmin = {1,0};
% db(i).injection = {'No injection', 'Quinine', 'End'};
% db(i).lfp = 1:50:251;
% db(i).drinking = 20;
% db(i).dose = 0;
% db(i).controldose = 0.25;
% db(i).pupil = {[neuropixDir db(i).animal '\291119\video_66057\video_66057DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
%   [neuropixDir db(i).animal '\291119\video_68182\video_68182DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};

% M191114_A_BD TCB-2

i = i+1; % i = 59

% db(i).animal = 'M191114_A_BD';
% db(i).dir = 'R:\Neuropix\Shared\Data\M191114_A_BD\031219\Stitched';
% db(i).nChans = {384,1};
% db(i).breakmin = {1,0};
% db(i).injection = {'No injection', 'TCB-2', 'End'};
% db(i).lfp = 1:50:251;
% db(i).drinking = 18;
% db(i).dose = 13.6;
% db(i).controldose = 0;
% db(i).pupil = {[neuropixDir db(i).animal '\031219\video_48483\video_48483DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
%   [neuropixDir db(i).animal '\031219\video_50604\video_50604DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};

% M191129_A_BD Quinine

i = i+1; % i = 60

db(i).animal = 'M191129_A_BD';
db(i).date = '111219';
db(i).weight = 22;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'CONTROL - 0.5mM Quinine + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'Quinine', 'End'};
db(i).HTR = [1,2,3];
db(i).lfp = 1:50:251;
db(i).drinking = 17;
db(i).dose = 0;
db(i).controldose = 0.44;
db(i).pupil = {[neuropixDir db(i).animal '\111219\video_58774\video_58774DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\111219\video_60980\video_60980DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M191129_A_BD TCB-2

i = i+1; % i = 61

db(i).animal = 'M191129_A_BD';
db(i).date = '121219';
db(i).weight = 22;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\LFP'];
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,0};
db(i).injection = {'No injection', 'TCB-2', 'End'};
db(i).HTR = [10,10,10];
db(i).lfp = 1:50:251;
db(i).drinking = 15;
db(i).dose = 10;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\121219\video_65307\video_65307DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\121219\video_67471\video_67471DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M200312_A_BD PFC TCB-2

i = i+1; % i = 62

db(i).date = '260320';
db(i).animal = 'M200312_A_BD';
db(i).syringe_label = 'A1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 99;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [5,4,3];
db(i).lfp = 50:50:300;
db(i).dose = 9;
db(i).controldose = 0;
db(i).location = 'PFC';

% M200312_A_BD V1 TCB-2

i = i+1; % i = 63

db(i).date = '260320';
db(i).animal = 'M200312_A_BD';
db(i).syringe_label = 'A1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 99;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [5,4,3];
db(i).dose = 9;
db(i).controldose = 0;
db(i).surfacedepth = 3200;
db(i).lfp = 30:30:300;
db(i).NIDQ = {'E:\Data\M200312_A_BD\260320\baseline_g0\baseline_g0_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\260320\baseline_g1\baseline_g1_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\260320\baseline_g2\baseline_g2_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\260320\baseline_g3\baseline_g3_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\260320\baseline_g4\baseline_g4_t0.nidq.bin'};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date  ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' A1.mat']};
db(i).location = 'V1';
  
% M200312_A_BD PFC Control

i = i+1; % i = 64

db(i).date = '270320';
db(i).animal = 'M200312_A_BD';
db(i).syringe_label = 'A2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 100;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).animal = 'M200312_A_BD';
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [1,1,0];
db(i).lfp = 50:50:300;
db(i).dose = 0;
db(i).controldose = 0.2;
db(i).pupil = {[neuropixDir db(i).animal '\270320\video_66696\video_66696DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_68210\video_68210DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_70422\video_70422DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_71662\video_71662DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_73151\video_73151DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M200312_A_BD V1 Control

i = i+1; % i = 65

db(i).date = '270320';
db(i).animal = 'M200312_A_BD';
db(i).syringe_label = 'A2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 100;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [1,1,0];
db(i).dose = 0;
db(i).controldose = 0.2;
db(i).surfacedepth = 3400;
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\270320\video_66696\video_66696DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_68210\video_68210DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_70422\video_70422DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_71662\video_71662DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_73151\video_73151DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).NIDQ = {'E:\Data\M200312_A_BD\270320\M200312_A_BD_g0\M200312_A_BD_g0_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\270320\M200312_A_BD_g1\M200312_A_BD_g1_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\270320\M200312_A_BD_g2\M200312_A_BD_g2_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\270320\M200312_A_BD_g3\M200312_A_BD_g3_t0.nidq.bin',...
    'E:\Data\M200312_A_BD\270320\M200312_A_BD_g4\M200312_A_BD_g4_t0.nidq.bin'};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date  ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' A2.mat']};
db(i).location = 'V1';
  
% M200312_B_BD PFC TCB-2

i = i+1; % i = 66

db(i).date = '270320';
db(i).animal = 'M200312_B_BD';
db(i).syringe_label = 'B1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2 + 15% sucrose';
db(i).age = 100;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [7,5,5];
db(i).lfp = 50:50:300;
db(i).dose = 6.7;
db(i).controldose = 0;
db(i).pupil = {[neuropixDir db(i).animal '\270320\video_46356\video_46356DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_47790\video_47790DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_50135\video_50135DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_51231\video_51231DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_52652\video_52652DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M200312_B_BD V1 TCB-2

i = i+1; % i = 67

db(i).date = '270320';
db(i).animal = 'M200312_B_BD';
db(i).syringe_label = 'B1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 100;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [7,5,5];
db(i).dose = 6.7;
db(i).controldose = 0;
db(i).surfacedepth = 3000;
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\270320\video_46356\video_46356DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_47790\video_47790DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_50135\video_50135DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_51231\video_51231DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\270320\video_52652\video_52652DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).NIDQ = {'E:\Data\M200312_B_BD\270320\M200312_B_BD_g0\M200312_B_BD_g0_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\270320\M200312_B_BD_g1\M200312_B_BD_g1_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\270320\M200312_B_BD_g2\M200312_B_BD_g2_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\270320\M200312_B_BD_g3\M200312_B_BD_g3_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\270320\M200312_B_BD_g4\M200312_B_BD_g4_t0.nidq.bin'};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date  ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' B1.mat']};
db(i).location = 'V1';
  
% M200312_B_BD PFC Control

i = i+1; % i = 68

db(i).date = '280320';
db(i).animal = 'M200312_B_BD';
db(i).syringe_label = 'B2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 101;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [2,1,0];
db(i).lfp = 50:50:300;
db(i).dose = 0;
db(i).controldose = 0.25;
db(i).pupil = {[neuropixDir db(i).animal '\280320\video_71210\video_71210DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_72664\video_72664DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_74895\video_74895DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_76022\video_76022DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_77561\video_77561DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).location = 'PFC';
  
% M200312_B_BD V1 Control

i = i+1; % i = 69

db(i).date = '280320';
db(i).animal = 'M200312_B_BD';
db(i).syringe_label = 'B2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 101;
db(i).weight = 22.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [2,1,0];
db(i).dose = 0;
db(i).controldose = 0.25;
db(i).surfacedepth = 3250;
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\280320\video_71210\video_71210DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_72664\video_72664DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_74895\video_74895DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_76022\video_76022DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv'],...
    [neuropixDir db(i).animal '\280320\video_77561\video_77561DLC_resnet50_Pupil_TrackingApr22shuffle1_2400_filtered.csv']};
db(i).NIDQ = {'E:\Data\M200312_B_BD\280320\M200312_B_BD_g0\M200312_B_BD_g0_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\280320\M200312_B_BD_g1\M200312_B_BD_g1_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\280320\M200312_B_BD_g2\M200312_B_BD_g2_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\280320\M200312_B_BD_g3\M200312_B_BD_g3_t0.nidq.bin',...
    'E:\Data\M200312_B_BD\280320\M200312_B_BD_g4\M200312_B_BD_g4_t0.nidq.bin'};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date  ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' B2.mat']};
db(i).location = 'V1';
  
% M200826_B_BD PFC C1

i = i+1; % i = 70
db(i).date = '080920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_label = 'C1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 139;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [3,4,4];
db(i).dose = 5.1;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_64411\video_64411DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66051\video_66051DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_68062\video_68062DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_69218\video_69218DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_70783\video_70783DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';

% M200826_B_BD V1 C1

i = i+1; % i = 71
db(i).date = '080920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_label = 'C1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 139;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [3,4,4];
db(i).dose = 5.1;
db(i).controldose = 0;
db(i).surfacedepth = 3300; %needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_64411\video_64411DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66051\video_66051DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_68062\video_68062DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_69218\video_69218DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_70783\video_70783DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' C1.mat']};
db(i).location = 'V1';
  
% M200826_B_BD PFC C2

i = i+1; % i = 72
db(i).date = '100920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_label = 'C2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 141;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [1,0,1];
db(i).dose = 0;
db(i).controldose = 0.48;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49481\video_49481DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_50782\video_50782DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52620\video_52620DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53757\video_53757DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55257\video_55257DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M200826_B_BD V1 C2

i = i+1; % i = 73
db(i).date = '100920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_label = 'C2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 141;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [1,0,1];
db(i).dose = 0;
db(i).controldose = 0.48;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49481\video_49481DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_50782\video_50782DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52620\video_52620DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53757\video_53757DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55257\video_55257DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' C2.mat']};
db(i).location = 'V1';
  
% % M200826_A_BD PFC D1
%
% i = i+1; 
% db(i).date = '090920';
% db(i).animal = 'M200826_A_BD';
% db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
% db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
% db(i).nChans = {384,1};
% db(i).cond = [1 4];
% db(i).breakmin = {1,1,1,1};
% db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
% db(i).dose = 0;
% db(i).controldose = [];
% db(i).surfacedepth = [];
% db(i).lfp = 50:50:300;
% db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49481_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_50782_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_52620_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_53757_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_55257_processed.mat']};
% db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
%
% % M200826_A_BD V1 D1
%
% i = i+1;
% db(i).date = '090920';
% db(i).animal = 'M200826_A_BD';
% db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
% db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
% db(i).nChans = {384,1};
% db(i).cond = [1 4];
% db(i).breakmin = {1,1,1,1};
% db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
% db(i).dose = 0;
% db(i).controldose = [];
% db(i).surfacedepth = 3300; %needs refining from drift plot
% db(i).lfp = 30:30:300;
% db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49481_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_50782_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_52620_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_53757_processed.mat'],...
%   [neuropixDir db(i).animal '\' db(i).date '\video_55257_processed.mat']};
% db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
%     [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
% db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline']};

% M200826_C_BD PFC E1

i = i+1; % i = 74
db(i).date = '160920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_label = 'E1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 145;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [3,1,2];
db(i).dose = 0;
db(i).controldose = 0.45;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_52625\video_52625DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53272\video_53272DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55069\video_55069DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_56231\video_56231DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_57773\video_57773DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M200826_C_BD V1 E1

i = i+1; % i = 75
db(i).date = '160920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_label = 'E1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 145;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [3,1,2];
db(i).dose = 0;
db(i).controldose = 0.45;
db(i).surfacedepth = 3300; %needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_52625\video_52625DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53272\video_53272DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55069\video_55069DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_56231\video_56231DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_57773\video_57773DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' E1.mat']};
db(i).location = 'V1';
  
% M200826_C_BD PFC E2

i = i+1; % i = 76
db(i).date = '170920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_label = 'E2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 146;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [7,11,11];
db(i).dose = 11.4;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_47047\video_47047DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_48569\video_48569DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_50347\video_50347DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51499\video_51499DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53062\video_53062DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M200826_C_BD V1 E2

i = i+1; % i = 77
db(i).date = '170920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_label = 'E2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 146;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [7,11,11];
db(i).dose = 11.4;
db(i).controldose = 0;
db(i).surfacedepth = 3300; %needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_47047\video_47047DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_48569\video_48569DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_50347\video_50347DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51499\video_51499DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53062\video_53062DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' E2.mat']};
db(i).location = 'V1';
  
% M200826_D_BD PFC F1

i = i+1; % i = 78
db(i).date = '220920';
db(i).animal = 'M200826_D_BD';
db(i).syringe_label = 'F1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 153;
db(i).weight = 31.3;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [4,2,2];
db(i).dose = 0;
db(i).controldose = 0.4;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_65048\video_65048DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66501\video_66501DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_68365\video_68365DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_69459\video_69459DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_71075\video_71075DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M200826_D_BD V1 F1

i = i+1; % i = 79
db(i).date = '220920';
db(i).animal = 'M200826_D_BD';
db(i).syringe_label = 'F1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 153;
db(i).weight = 31.3;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [4,2,2];
db(i).dose = 0;
db(i).controldose = 0.4;
db(i).surfacedepth = 3300; %needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_65048\video_65048DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66501\video_66501DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_68365\video_68365DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_69459\video_69459DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_71075\video_71075DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' F1.mat']};
db(i).location = 'V1';
  
% M200826_D_BD PFC F2

i = i+1; % i = 80
db(i).date = '230920';
db(i).animal = 'M200826_D_BD';
db(i).syringe_label = 'F2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 154;
db(i).weight = 31.3;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [6,9,9];
db(i).dose = 6.4;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_60732\video_60732DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62281\video_62281DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_64187\video_64187DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_65368\video_65368DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66826\video_66826DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g5\'  db(i).animal '_g5_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M200826_D_BD V1 F2

i = i+1; % i = 81
db(i).date = '230920';
db(i).animal = 'M200826_D_BD';
db(i).syringe_label = 'F2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 154;
db(i).weight = 31.3;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [6,9,9];
db(i).dose = 6.4;
db(i).controldose = 0;
db(i).surfacedepth = 3300; %needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_60732\video_60732DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62281\video_62281DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_64187\video_64187DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_65368\video_65368DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66826\video_66826DLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g5\'  db(i).animal '_g5_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' F2.mat']};
db(i).location = 'V1';  
  
% M201008_C_BD PFC G1

i = i+1; % i = 82
db(i).date = '211020';
db(i).animal = 'M201008_C_BD';
db(i).syringe_label = 'G1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 58;
db(i).weight = 22.7;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [8,6,4];
db(i).dose = 6.6;
db(i).controldose = [];
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_60565\video_60565_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62058\video_62058_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_63881\video_63881_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_65119\video_65119_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66630\video_66630_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M201008_C_BD V1 G1

i = i+1; % i = 83
db(i).date = '211020';
db(i).animal = 'M201008_C_BD';
db(i).syringe_label = 'G1';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 58;
db(i).weight = 22.7;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [8,6,4];
db(i).dose = 6.6;
db(i).controldose = 0;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_60565\video_60565_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62058\video_62058_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_63881\video_63881_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_65119\video_65119_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_66630\video_66630_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' G1.mat']};
db(i).location = 'V1';
  
% M201008_C_BD PFC G2

i = i+1; % i = 84
db(i).date = '221020';
db(i).animal = 'M201008_C_BD';
db(i).syringe_label = 'G2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 59;
db(i).weight = 22.7;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [1,2,0];
db(i).dose = 0;
db(i).controldose = 0.15;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_58479\video_58479_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_60310\video_60310_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62228\video_62228_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_63418\video_63418_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_64931\video_64931_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M201008_C_BD V1 G2

i = i+1; % i = 85
db(i).date = '221020';
db(i).animal = 'M201008_C_BD';
db(i).syringe_label = 'G2';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 59;
db(i).weight = 22.7;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [1,2,0];
db(i).dose = 0;
db(i).controldose = 0.15;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_58479\video_58479_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_60310\video_60310_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62228\video_62228_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_63418\video_63418_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_64931\video_64931_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' G2.mat']};
db(i).location = 'V1';
  
% M201008_A_BD PFC H1

i = i+1; % i = 86
db(i).date = '271020';
db(i).animal = 'M201008_A_BD';
db(i).syringe_label = 'H1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 64;
db(i).weight = 18.7;
db(i).sex = 'F';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [6,4,6];
db(i).dose = 0;
db(i).controldose = 0.14;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_46692\video_46692_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_48388\video_48388_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_50167\video_50167_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51453\video_51453_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52914\video_52914_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g0\'  db(i).animal '1_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g1\'  db(i).animal '1_g1_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M201008_A_BD V1 H1

i = i+1; % i = 87
db(i).date = '271020';
db(i).animal = 'M201008_A_BD';
db(i).syringe_label = 'H1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 64;
db(i).weight = 18.7;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [6,4,6];
db(i).dose = 0;
db(i).controldose = 0.14;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_46692\video_46692_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_48388\video_48388_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_50167\video_50167_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51453\video_51453_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52914\video_52914_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g0\'  db(i).animal '1_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g1\'  db(i).animal '1_g1_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' H1.mat']};
db(i).location = 'V1';
  
% M201008_A_BD PFC H2

i = i+1; % i = 88
db(i).date = '281020';
db(i).animal = 'M201008_A_BD';
db(i).syringe_label = 'H2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 65;
db(i).weight = 18.7;
db(i).sex = 'F';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [2,2,2];
db(i).dose = 8;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_54689\video_54689_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_56333\video_56333_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_58062\video_58062_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_59149\video_59149_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_60947\video_60947_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M201008_A_BD V1 H2

i = i+1; % i = 89
db(i).date = '281020';
db(i).animal = 'M201008_A_BD';
db(i).syringe_label = 'H2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 65;
db(i).weight = 18.7;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [2,2,2];
db(i).dose = 8;
db(i).controldose = 0;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_54689\video_54689_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_56333\video_56333_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_58062\video_58062_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_59149\video_59149_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_60947\video_60947_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' H2.mat']};
db(i).location = 'V1';
db(i).notes = {'several channels missing from 2nd Vi Stim condition'};
  
% M201008_B_BD PFC I1

i = i+1; % i = 90
db(i).date = '291020';
db(i).animal = 'M201008_B_BD';
db(i).syringe_label = 'I1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 66;
db(i).weight = 19.6;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [3,1,1];
db(i).dose = 0;
db(i).controldose = 0.28;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_42586\video_42586_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_44177\video_44177_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_46047\video_46047_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_47167\video_47167_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_48676\video_48676_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g0\'  db(i).animal '1_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g1\'  db(i).animal '1_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g2\'  db(i).animal '1_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g3\'  db(i).animal '1_g3_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M201008_B_BD V1 I1

i = i+1; % i = 91
db(i).date = '291020';
db(i).animal = 'M201008_B_BD';
db(i).syringe_label = 'I1';
db(i).syringe_contents = 'CONTROL - 0.5mM SOA (15% sucrose)';
db(i).age = 66;
db(i).weight = 19.6;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [3,1,1];
db(i).dose = 0;
db(i).controldose = 0.28;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_42586\video_42586_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_44177\video_44177_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_46047\video_46047_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_47167\video_47167_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_48676\video_48676_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g0\'  db(i).animal '1_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g1\'  db(i).animal '1_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g2\'  db(i).animal '1_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '1_g3\'  db(i).animal '1_g3_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' I1.mat']};
db(i).location = 'V1';
  
% M201008_B_BD PFC I2

i = i+1; % i = 92
db(i).date = '301020';
db(i).animal = 'M201008_B_BD';
db(i).syringe_label = 'I2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 67;
db(i).weight = 19.6;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [4,3,7];
db(i).dose = 6.6;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_51915\video_51915_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53327\video_53327_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55110\video_55110_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_56232\video_56232_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_57768\video_57768_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M201008_B_BD V1 I2

i = i+1; % i = 93
db(i).date = '301020';
db(i).animal = 'M201008_B_BD';
db(i).syringe_label = 'I2';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 67;
db(i).weight = 19.6;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [4,3,7];
db(i).dose = 6.6;
db(i).controldose = 0;
db(i).surfacedepth = 3300; % needs refining from drift plot
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_51915\video_51915_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53327\video_53327_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55110\video_55110_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_56232\video_56232_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_57768\video_57768_mirrorDLC_resnet50_FacePupil_TrackingApr29shuffle1_3000_filtered.csv']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).imageorder = {[neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' baseline.mat'],...
    [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' I2.mat']};
db(i).location = 'V1';
  
%%% ADAPTATION RECORDINGS 99 = V1, 100 - 105 1ST RECORDING%%%
i = 99;

% M200826_B_BD 1st Adaptation recording V1
db(i).date = '220920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 153;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' V1 - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [7,6,7];
db(i).dose = 8.5;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 30:30:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49547_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51086_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52894_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53994_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55565_processed.mat']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'V1';

i = 100;

% M200826_B_BD 1st Adaptation recording
db(i).date = '220920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 153;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' PFC - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {1,1,1,1};
db(i).injection = {'baselinepre', 'ViStimpre', 'drinking' 'baselinepost', 'ViStimpost', 'End'};
db(i).HTR = [7,6,7];
db(i).dose = 8.5;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49547_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51086_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52894_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53994_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55565_processed.mat']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g2\'  db(i).animal '_g2_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g3\'  db(i).animal '_g3_t0.nidq.bin'],...
    [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g4\'  db(i).animal '_g4_t0.nidq.bin']};
db(i).location = 'PFC';
  
% M200826_C_BD 1st Adaptation recording

i = i+1;
db(i).date = '280920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 157;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' PFC - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [15,10,15];
db(i).dose = 2.6;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M200826_D_BD 1st Adaptation recording

i = i+1;
db(i).date = '051020';
db(i).animal = 'M200826_D_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 166;
db(i).weight = 30.7;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' PFC - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [10,9,9];
db(i).dose = 3.3;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_C_BD 1st Adaptation recording

i = i+1;
db(i).date = '031120';
db(i).animal = 'M201008_C_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 71;
db(i).weight = 23.2;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' PFC - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [10,7,7];
db(i).dose = 9.5;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_A_BD 1st Adaptation recording

i = i+1;
db(i).date = '101120';
db(i).animal = 'M201008_A_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 78;
db(i).weight = 19.1;
db(i).sex = 'F';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' PFC - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [2,7,8];
db(i).dose = 5.2;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_B_BD 1st Adaptation recording

i = i+1;
db(i).date = '101120';
db(i).animal = 'M201008_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 78;
db(i).weight = 19.9;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\' db(i).animal ' ' db(i).date ' PFC - sorted'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [8,7,2];
db(i).dose = 10.1;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';


%%%% ADAPTATION RECORDINGS 110-115 & 120-125 PARAMETERS NEED INSPECTING ONLY DATA DIRECTORY HAS BEEN UPDATED

%%% ADAPTATION RECORDINGS 110 - 115 2nd RECORDING%%%
i = 110;

% M200826_B_BD 2nd Adaptation recording
db(i).date = '230920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 153;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking' 'baselinepost', 'End'};
db(i).HTR = [1,2,1];
db(i).dose = 6.1;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49547_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51086_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52894_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53994_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55565_processed.mat']};
db(i).location = 'PFC';

% M200826_C_BD 2nd Adaptation recording

i = i+1;
db(i).date = '290920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 157;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [9,4,6];
db(i).dose = 4.9;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M200826_D_BD 2nd Adaptation recording

i = i+1;
db(i).date = '061020';
db(i).animal = 'M200826_D_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 166;
db(i).weight = 30.7;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [4,5,2];
db(i).dose = 3.9;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_C_BD 2nd Adaptation recording

i = i+1;
db(i).date = '041120';
db(i).animal = 'M201008_C_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 71;
db(i).weight = 23.2;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [1,1,2];
db(i).dose = 6.5;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_A_BD 2nd Adaptation recording

i = i+1;
db(i).date = '111120';
db(i).animal = 'M201008_A_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 78;
db(i).weight = 19.1;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [2,1,2];
db(i).dose = 10.5;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_B_BD 2nd Adaptation recording

i = i+1;
db(i).date = '111120';
db(i).animal = 'M201008_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 78;
db(i).weight = 19.9;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [4,0,2];
db(i).dose = 10.6;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

%%% ADAPTATION RECORDINGS 120 - 125 3rd RECORDING%%%
i = 120;

% M200826_B_BD 3rd Adaptation recording
db(i).date = '240920';
db(i).animal = 'M200826_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 153;
db(i).weight = 29.5;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking' 'baselinepost', 'End'};
db(i).HTR = [2,2,1];
db(i).dose = 5.1;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_49547_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_51086_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_52894_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_53994_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_55565_processed.mat']};
db(i).location = 'PFC';

% M200826_C_BD 3rd Adaptation recording

i = i+1;
db(i).date = '300920';
db(i).animal = 'M200826_C_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 157;
db(i).weight = 30.6;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [7,4,1];
db(i).dose = 4.9;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M200826_D_BD 3rd Adaptation recording

i = i+1;
db(i).date = '071020';
db(i).animal = 'M200826_D_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 166;
db(i).weight = 30.7;
db(i).sex = 'M';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [2,4,2];
db(i).dose = 8.1;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_C_BD 3rd Adaptation recording

i = i+1;
db(i).date = '051120';
db(i).animal = 'M201008_C_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 71;
db(i).weight = 23.2;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [3,2,2];
db(i).dose = 7.3;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_A_BD 3rd Adaptation recording

i = i+1;
db(i).date = '121120';
db(i).animal = 'M201008_A_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 78;
db(i).weight = 19.1;
db(i).sex = 'F';
db(i).ref = 'internal tip';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [0,2,2];
db(i).dose = 6.3;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% M201008_B_BD 3rd Adaptation recording

i = i+1;
db(i).date = '121120';
db(i).animal = 'M201008_B_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 78;
db(i).weight = 19.9;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Stitched'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {1,1,1};
db(i).injection = {'baselinepre', 'drinking', 'baselinepost', 'End'};
db(i).HTR = [3,2,1];
db(i).dose = 2;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';

% ANAESTHETISED RECORDINGS

% M210316_MS

i = 130;

db(i).date = '160321';
db(i).animal = 'M210316_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 92;
db(i).weight = 20;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'Saline (i.p.)', 'TCB-2 (i.p.)', 'End'};
db(i).DurationS = [12 13 40]*60;
db(i).dose = 10;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M210319_MS

i = i+1; % i = 131

db(i).date = '190321';
db(i).animal = 'M210319_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM SOA (15% sucrose)';
db(i).age = 95;
db(i).weight = 21.1;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'Saline (i.p.)', 'TCB-2 (i.p.)', 'End'};
db(i).DurationS = [10 17 40]*60;
db(i).dose = 10;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M210521_MS

i = i+1; % i = 132

db(i).date = '210521';
db(i).animal = 'M210521_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2, 0.5mM quinine (15% sucrose)';
db(i).age = 70;
db(i).weight = 20.3;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'Saline (i.p.)', 'TCB-2 (i.p.)', 'End'};
db(i).DurationS = [12 22.8 45]*60;
db(i).dose = 10;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';
db(i).probe = 'NP1';


% M210610_MS

i = i+1; % i = 133

db(i).date = '100621';
db(i).animal = 'M210610_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = 41;
db(i).weight = 18.8;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'Saline (i.p.)', 'TCB-2 (i.p.)', 'End'};
db(i).DurationS = [12 24.5 44.5]*60;
db(i).dose = 10;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M210611_MS

i = i+1; % i = 134

db(i).date = '110621';
db(i).animal = 'M210611_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = 42;
db(i).weight = 17.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'Saline (i.p.)', 'TCB-2 (i.p.)', 'End'};
db(i).DurationS = [12 20.8 45]*60;
db(i).dose = 10;
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M210826_MS PFC

i = i+1; % i = 135

db(i).date = '260821';
db(i).animal = 'M210826_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = 52;
db(i).weight = 20.8;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,0};
db(i).cond = [1 3 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre', 'TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)', 'ViStimpost', 'End'};
db(i).DurationS = [12 22.5 15 18 22.5]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M210826_MS V1

i = i+1; % i = 136

db(i).date = '260821';
db(i).animal = 'M210826_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = 52;
db(i).weight = 20.8;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,0};
db(i).cond = [1 3 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre', 'TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)', 'ViStimpost', 'End'};
db(i).DurationS = [12 22.5 15 18 22.5]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = 3300;
db(i).lfp = 30:30:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP1';

% M210827_MS PFC

i = i+1; % i = 137

db(i).date = '270821';
db(i).animal = 'M210827_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = 54;
db(i).weight = 25.1;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 2 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)', 'End'};
db(i).DurationS = [12 15 15]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_60322_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_61168_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_61566_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_62237_processed.mat']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M210907_MS PFC

i = i+1; % i = 138

db(i).date = '070921';
db(i).animal = 'M210907_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = 55;
db(i).weight = 20.1;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 2 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)', 'End'};
db(i).DurationS = [12.5 15 15]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {[neuropixDir db(i).animal '\' db(i).date '\video_58045_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_58917_processed.mat'],...
    [neuropixDir db(i).animal '\' db(i).date '\video_59961_processed.mat']};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M211201_MS V1

i = i+1; % i = 139

db(i).date = '011221';
db(i).animal = 'M211201_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 18.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 8 23 15 15 9 23]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 30:30:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP1';

% M220117_B_MS PFC

i = i+1; % i = 140

db(i).date = '110222';
db(i).animal = 'M220117_B_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 21;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)', 'ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 12 23 15 15 12 23]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220117_B_MS V1

i = i+1; % i = 141

db(i).date = '110222';
db(i).animal = 'M220117_B_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 21;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220117_B_MS_g1\M220117_B_MS_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 4 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 12 23 15 15 12 23]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220119_A_MS PFC

i = i+1; % i = 142

db(i).date = '210222';
db(i).animal = 'M220119_A_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 19;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 4 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_gratingERROR','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)', 'ViStimpost_gratingERROR','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 15 11 23]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220119_A_MS V1

i = i+1; % i = 143

db(i).date = '210222';
db(i).animal = 'M220119_A_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 19;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220119_A_MS_g1\M220119_A_MS_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 4 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_gratingERROR','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','ViStimpost_gratingERROR','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 15 11 23]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220119_B_MS V1

i = i+1; % i = 144

db(i).date = '230222';
db(i).animal = 'M220119_B_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 22;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220119_B_MS_g1\M220119_B_MS_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_gratingERROR','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','ViStimpost','End'};
db(i).DurationS = [12 8 24.5 15 15 25.5]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220310_B_MS PFC

i = i+1; % i = 145

db(i).date = '140422';
db(i).animal = 'M220310_B_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 23;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 2 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','ERROR','End'};
db(i).DurationS = [17 15 15 10]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).NIDQ = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_41276.mj2'];
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220311_A_MS PFC

i = i+1; % i = 146

db(i).date = '150422';
db(i).animal = 'M220311_A_MS';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 24;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 2 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','End'};
db(i).DurationS = [17 15 15]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).NIDQ = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_48467.mj2'];
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220311_B_MS
i = i+1; % i = 147

db(i).date = '250422';
db(i).animal = 'M220311_B_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 21.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [-256 -202 168]; % x_coord, y_coord, lfpchannel

% M220405_BD

i = i+1; % i = 148

db(i).date = '180522';
db(i).animal = 'M220405_BD';
db(i).syringe_contents = 'TCB-2 - 1mg/kg TCB-2';
db(i).age = [];
db(i).weight = 30;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 2 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre','TCB-2 Low (i.p.)', 'TCB-2 High (i.p.)','End'};
db(i).DurationS = [15 15 15]*60;
db(i).dose = [1 9];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).NIDQ = {};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220613_A_MS
i = i+1; % i = 149

db(i).date = '080722';
db(i).animal = 'M220613_A_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','TCB-2 (i.p.)','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 10.5 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 120]; % x_coord, y_coord, lfpchannel



top_MSanaes_recording = i;

% SLICE RECORDINGS

% M210330_BD

i = 150;

db(i).date = '300321';
db(i).animal = 'M210330_BD';
db(i).syringe_contents = '0.25uM Carbachol + 5uM TCB-2';
db(i).age = 54;
db(i).weight = [];
db(i).sex = 'M';
db(i).dir = ['F:\Data\Slice ephys\M210330_BD\experiment1\recording3\continuous\Rhythm_FPGA-100.0\KS2'];
db(i).LFPdir = ['F:\Data\Slice ephys\M210330_BD\experiment1\recording3\continuous\Rhythm_FPGA-100.0\KS2'];
db(i).nChans = {64,0};
db(i).cond = [1 2];
db(i).breakmin = {};
db(i).injection = {'baseline - 0.25uM Carbachol', '0.25uM Carbachol + 5uM TCB-2', 'washout - 0.25uM Carbachol', 'No Carbachol' , 'End'};
db(i).DurationS = [20 27 15 15]*60;
db(i).dose = [0.25 5]; % [um CCH, uM TCB-2]
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 5;

% M210514_BD

i = i+1; % i = 151

db(i).date = '140521';
db(i).animal = 'M210514_BD';
db(i).syringe_contents = '0.5uM Carbachol + 5uM TCB-2';
db(i).age = 72;
db(i).weight = [];
db(i).sex = 'M';
db(i).dir = ['F:\Data\Slice ephys\M210514_BD\2021-05-14_16-08-52\experiment1\recording1\continuous\Rhythm_FPGA-100.0\KS3'];
db(i).LFPdir = ['F:\Data\Slice ephys\M210514_BD\2021-05-14_16-08-52\experiment1\recording1\continuous\Rhythm_FPGA-100.0'];
db(i).nChans = {64,0};
db(i).cond = [1 2];
db(i).breakmin = {};
db(i).injection = {'baseline - 0.5uM Carbachol', '0.5uM Carbachol + 5uM TCB-2', 'washout - 0.5uM Carbachol', 'End'};
db(i).DurationS = [22 22 22]*60;
db(i).dose = [0.5 5]; % [um CCH, uM TCB-2]
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 5;

% MS AWAKE RECORDINGS

% M211123_A_MS 

i = 160; % i = 160

db(i).date = '031221';
db(i).animal = 'M211123_A_MS';
db(i).syringe_contents = [];
db(i).age = [];
db(i).weight = 21.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [];
db(i).breakmin = {};
db(i).injection = {'baseline', 'ViStimpre_grating','ViStimpre','End'};
db(i).DurationS = [12 8 22.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 30:30:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP1';

% M211123_B_MS

i = i+1; % i = 161

db(i).date = '031221';
db(i).animal = 'M211123_B_MS';
db(i).syringe_contents = [];
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [];
db(i).breakmin = {};
db(i).injection = {'baseline', 'ViStimpre_grating','ViStimpre','End'};
db(i).DurationS = [12 7 24]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 30:30:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP1';

% M220117_B_MS PFC

i = i+1; % i = 162

db(i).date = '020222';
db(i).animal = 'M220117_B_MS';
db(i).syringe_contents = []; % J1
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 12 24 15 12 12 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220117_B_MS V1

i = i+1; % i = 163

db(i).date = '020222';
db(i).animal = 'M220117_B_MS';
db(i).syringe_contents = []; % J1
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220117_B_MS_g1\M220117_B_MS_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 12 24 15 12 12 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220117_B_MS PFC

i = i+1; % i = 164

db(i).date = '030222';
db(i).animal = 'M220117_B_MS';
db(i).syringe_contents = []; % J2
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 12 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220117_B_MS V1

i = i+1; % i = 165

db(i).date = '030222';
db(i).animal = 'M220117_B_MS';
db(i).syringe_contents = []; % J2
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220117_B_MS_g1\M220117_B_MS_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 12 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220119_A_MS PFC

i = i+1; % i = 166

db(i).date = '150222';
db(i).animal = 'M220119_A_MS';
db(i).syringe_contents = []; % K1
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 11 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220119_A_MS V1

i = i+1; % i = 167

db(i).date = '150222';
db(i).animal = 'M220119_A_MS';
db(i).syringe_contents = []; % K1
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220119_A_MS_g1\M220119_A_MS_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 11 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220119_A_MS PFC

i = i+1; % i = 168

db(i).date = '160222';
db(i).animal = 'M220119_A_MS';
db(i).syringe_contents = []; % K2
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 11 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220119_A_MS V1

i = i+1; % i = 169

db(i).date = '160222';
db(i).animal = 'M220119_A_MS';
db(i).syringe_contents = []; % K2
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220119_A_MS_g1\M220119_A_MS_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 11 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220119_B_MS V1

i = i+1; % i = 170

db(i).date = '170222';
db(i).animal = 'M220119_B_MS';
db(i).syringe_contents = []; % L1
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220119_B_MS_g1\M220119_B_MS_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 11 23 15 12 11 23]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220119_B_MS V1

i = i+1; % i = 171

db(i).date = '180222';
db(i).animal = 'M220119_B_MS';
db(i).syringe_contents = []; % L2
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\M220119_B_MS_g1\M220119_B_MS_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [12 10.5 22.5 15 12 13 22.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220310_A_MS PFC

i = i+1; % i = 172

db(i).date = '230322';
db(i).animal = 'M220310_A_MS';
db(i).syringe_contents = []; % M1
db(i).age = [];
db(i).weight = 22.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 11 21 15 15 11 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_62283.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220310_A_MS V1
i = i+1; % i = 173

db(i).date = '230322';
db(i).animal = 'M220310_A_MS';
db(i).syringe_contents = []; % M1
db(i).age = [];
db(i).weight = 22.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 11 21 15 15 11 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_62283.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220310_A_MS PFC

i = i+1; % i = 174

db(i).date = '240322';
db(i).animal = 'M220310_A_MS';
db(i).syringe_contents = []; % M2
db(i).age = [];
db(i).weight = 22.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 125;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_45606.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220310_A_MS
i = i+1; % i = 175

db(i).date = '240322';
db(i).animal = 'M220310_A_MS';
db(i).syringe_contents = []; % M2
db(i).age = [];
db(i).weight = 22.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_45606.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220310_B_MS
i = i+1; % i = 176

db(i).date = '050422';
db(i).animal = 'M220310_B_MS';
db(i).syringe_contents = []; % N1
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 10 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220310_B_MS
i = i+1; % i = 177

db(i).date = '060422';
db(i).animal = 'M220310_B_MS';
db(i).syringe_contents = []; % N2
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';

% M220311_A_MS
i = i+1; % i = 178

db(i).date = '060422';
db(i).animal = 'M220311_A_MS';
db(i).syringe_contents = []; % O1
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 11 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -202 24]; % x_coord, y_coord, lfpchannel


% M220311_A_MS
i = i+1; % i = 179

db(i).date = '070422';
db(i).animal = 'M220311_A_MS';
db(i).syringe_contents = []; % O2
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 10 15 11 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'coronal','posterior'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [256 206 72]; % x_coord, y_coord, lfpchannel

% M220311_B_MS
i = i+1; % i = 180

db(i).date = '200422';
db(i).animal = 'M220311_B_MS';
db(i).syringe_contents = []; % P1
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_60571.mj2'];
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [512 -406 216]; % x_coord, y_coord, lfpchannel

% M220311_B_MS
i = i+1; % i = 181

db(i).date = '210422';
db(i).animal = 'M220311_B_MS';
db(i).syringe_contents = []; % P2
db(i).age = [];
db(i).weight = 23.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_38129.mj2'];
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [512 -202 24]; % x_coord, y_coord, lfpchannel

% M220426_A_MS
i = i+1; % i = 182

db(i).date = '160522';
db(i).animal = 'M220426_A_MS';
db(i).syringe_contents = []; % Q1
db(i).age = [];
db(i).weight = 24.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_59252.mj2'];
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 216]; % x_coord, y_coord, lfpchannel

% M220426_A_MS
i = i+1; % i = 183

db(i).date = '170522';
db(i).animal = 'M220426_A_MS';
db(i).syringe_contents = []; % Q2
db(i).age = [];
db(i).weight = 24.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_35170.mj2'];
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 264]; % x_coord, y_coord, lfpchannel

% M220426_B_MS
i = i+1; % i = 184

db(i).date = '230522';
db(i).animal = 'M220426_B_MS';
db(i).syringe_contents = []; % R1
db(i).age = [];
db(i).weight = 24.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_70559.mj2'];
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 120]; % x_coord, y_coord, lfpchannel

% M220426_B_MS
i = i+1; % i = 185

db(i).date = '240522';
db(i).animal = 'M220426_B_MS';
db(i).syringe_contents = []; % R2
db(i).age = [];
db(i).weight = 24.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_38886.mj2'];
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'coronal','posterior'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [256 -406 216]; % x_coord, y_coord, lfpchannel

% M220525_B_MS 

i = i+1; % i = 186

db(i).date = '200622';
db(i).animal = 'M220525_B_MS';
db(i).syringe_contents = []; % S1
db(i).age = [];
db(i).weight = 27.0;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre','Drinking','baselinepost','End'};
db(i).DurationS = [15 15 30]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_63983.mj2'];
db(i).NIDQ = {};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220525_B_MS 

i = i+1; % i = 187

db(i).date = '210622';
db(i).animal = 'M220525_B_MS';
db(i).syringe_contents = []; % S2
db(i).age = [];
db(i).weight = 27.0;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 3];
db(i).breakmin = {};
db(i).injection = {'baselinepre','Drinking','baselinepost','End'};
db(i).DurationS = [15 15 30]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_41329.mj2'];
db(i).NIDQ = {};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220613_A_MS 

i = i+1; % i = 188

db(i).date = '270622';
db(i).animal = 'M220613_A_MS';
db(i).syringe_contents = []; % T1
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 11 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220613_A_MS

i = i+1; % i = 189

db(i).date = '270622';
db(i).animal = 'M220613_A_MS';
db(i).syringe_contents = []; % T1
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 11 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','internal'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [-256 -202 216]; % x_coord, y_coord, lfpchannel


% M220613_A_MS 

i = i+1; % i = 190

db(i).date = '280622';
db(i).animal = 'M220613_A_MS';
db(i).syringe_contents = []; % T2
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15.5 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220613_A_MS
i = i+1; % i = 191

db(i).date = '280622';
db(i).animal = 'M220613_A_MS';
db(i).syringe_contents = []; % T2
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15.5 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','internal'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -202 24]; % x_coord, y_coord, lfpchannel

% M220613_B_MS
i = i+1; % i = 192

db(i).date = '290622';
db(i).animal = 'M220613_B_MS';
db(i).syringe_contents = []; % U1
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 21 14.5 15 12 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300; 
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_52752.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP1';
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 216]; % x_coord, y_coord, lfpchannel

% M220613_B_MS
i = i+1; % i = 193

db(i).date = '300622';
db(i).animal = 'M220613_B_MS';
db(i).syringe_contents = []; % U2
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\V1\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 11 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300; 
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_37465.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP1';
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 216]; % x_coord, y_coord, lfpchannel

% M220613_C_MS 

i = i+1; % i = 194

db(i).date = '060722';
db(i).animal = 'M220613_C_MS';
db(i).syringe_contents = []; % V1
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15.5 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_59440.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220613_C_MS

i = i+1; % i = 195

db(i).date = '060722';
db(i).animal = 'M220613_C_MS';
db(i).syringe_contents = []; % V1
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15.5 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_59440.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [256 -202 168]; % x_coord, y_coord, lfpchannel


% M220613_C_MS 

i = i+1; % i = 196

db(i).date = '070722';
db(i).animal = 'M220613_C_MS';
db(i).syringe_contents = []; % V2
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 11 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_66017.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220613_C_MS
i = i+1; % i = 197

db(i).date = '070722';
db(i).animal = 'M220613_C_MS';
db(i).syringe_contents = []; % V2
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 11 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_66017.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [256 -406 168]; % x_coord, y_coord, lfpchannel

% M220613_B_MS Anaes
i = i+1; % i = 198

db(i).date = '110722';
db(i).animal = 'M220613_B_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 19.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 10.5 21]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'coronal','anterior'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [512 -406 216]; % x_coord, y_coord, lfpchannel

% M220613_D_MS
i = i+1; % i = 199

db(i).date = '130722';
db(i).animal = 'M220613_D_MS';
db(i).syringe_contents = []; % W1
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 11 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_58338.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 72]; % x_coord, y_coord, lfpchannel

% M220613_D_MS
i = i+1; % i = 200

db(i).date = '140722';
db(i).animal = 'M220613_D_MS';
db(i).syringe_contents = []; % W2
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_65061.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 168]; % x_coord, y_coord, lfpchannel

% M220613_C_MS Anaes
i = i+1; % i = 201

db(i).date = '150722';
db(i).animal = 'M220613_C_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 20.0;
db(i).sex = 'F';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'coronal','anterior'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 168]; % x_coord, y_coord, lfpchannel

% M220712_A_MS 

i = i+1; % i = 202

db(i).date = '200722';
db(i).animal = 'M220712_A_MS';
db(i).syringe_contents = []; % X1
db(i).age = [];
db(i).weight = 29.0;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_58811.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220712_A_MS

i = i+1; % i = 203

db(i).date = '200722';
db(i).animal = 'M220712_A_MS';
db(i).syringe_contents = []; % X1
db(i).age = [];
db(i).weight = 29.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_58811.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 168]; % x_coord, y_coord, lfpchannel

% M220712_A_MS 

i = i+1; % i = 204

db(i).date = '210722';
db(i).animal = 'M220712_A_MS';
db(i).syringe_contents = []; % X2
db(i).age = [];
db(i).weight = 29.0;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 16 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_52401.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220712_A_MS

i = i+1; % i = 205

db(i).date = '210722';
db(i).animal = 'M220712_A_MS';
db(i).syringe_contents = []; % X2
db(i).age = [];
db(i).weight = 29.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 16 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_52401.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -202 72]; % x_coord, y_coord, lfpchannel


% M220712_A_MS Anaes
i = 208; % i = 208 - NEED TO ADD IN MISSING PFC RECORDINGS!

db(i).date = '120822';
db(i).animal = 'M220712_A_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 31.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'coronal','anterior'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 120]; % x_coord, y_coord, lfpchannel

% M220712_B_MS Anaes
i = i + 1; % i = 209

db(i).date = '180822';
db(i).animal = 'M220712_B_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 31.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [17 10.5 20.5 15 10.5 22.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [256 -406 360]; % x_coord, y_coord, lfpchannel

% M220810_A_MS
i = i+1; % i = 210

db(i).date = '220822';
db(i).animal = 'M220810_A_MS';
db(i).syringe_contents = []; % TCB-2
db(i).age = [];
db(i).weight = 28.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_60916.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 264]; % x_coord, y_coord, lfpchannel

% M220810_A_MS
i = i+1; % i = 211

db(i).date = '230822';
db(i).animal = 'M220810_A_MS';
db(i).syringe_contents = []; % Control
db(i).age = [];
db(i).weight = 28.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_60916.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 264]; % x_coord, y_coord, lfpchannel

% M220810_B_MS 

i = i+1; % i = 212

db(i).date = '250822';
db(i).animal = 'M220810_B_MS';
db(i).syringe_contents = []; % Control
db(i).age = [];
db(i).weight = 34.0;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_48737.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220810_B_MS

i = i+1; % i = 213

db(i).date = '250822';
db(i).animal = 'M220810_B_MS';
db(i).syringe_contents = []; % Control
db(i).age = [];
db(i).weight = 34.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_48737.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 206]; % x_coord, y_coord, lfpchannel

% M220810_B_MS 

i = i+1; % i = 214

db(i).date = '260822';
db(i).animal = 'M220810_B_MS';
db(i).syringe_contents = []; % TCB-2
db(i).age = [];
db(i).weight = 34.0;
db(i).sex = 'M';
db(i).ref = 'external';
db(i).LFPgain = 250;
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\PFC\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\PFC\LFP'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = 50:50:300;
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_39064.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'PFC';
db(i).probe = 'NP1';

% M220810_B_MS

i = i+1; % i = 215

db(i).date = '260822';
db(i).animal = 'M220810_B_MS';
db(i).syringe_contents = []; % TCB-2
db(i).age = [];
db(i).weight = 34.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec1'];
db(i).nChans = {384,1};
db(i).cond = [1 5];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','Drinking','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).pupilvideo = [neuropixDir db(i).animal '\' db(i).date '\video_39064.mj2'];
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec1\' db(i).animal '_g0_t0.imec1.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [0 -406 250]; % x_coord, y_coord, lfpchannel

% M220810_A_MS Anaes
i = i + 1; % i = 216

db(i).date = '310822';
db(i).animal = 'M220810_A_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 29.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [-256 -202 312]; % x_coord, y_coord, lfpchannel

% M220810_B_MS Anaes
i = i + 1; % i = 217

db(i).date = '310822';
db(i).animal = 'M220810_B_MS';
db(i).syringe_contents = []; 
db(i).age = [];
db(i).weight = 32.0;
db(i).sex = 'M';
db(i).ref = [];
db(i).LFPgain = [];
db(i).dir = [neuropixDir  db(i).animal '\' db(i).date '\V1\Spikes'];
db(i).LFPdir = [neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g1\' db(i).animal '_g1_imec0'];
db(i).nChans = {384,1};
db(i).cond = [1 4];
db(i).breakmin = {};
db(i).injection = {'baselinepre', 'ViStimpre_grating','ViStimpre','baselinepost','ViStimpost_grating','ViStimpost','End'};
db(i).DurationS = [15 10.5 20.5 15 10.5 20.5]*60;
db(i).dose = [];
db(i).controldose = 0;
db(i).surfacedepth = [];
db(i).lfp = [24:48:360]; % middle channel from each box section
db(i).channelorder = [1 2 5 6 3 4 7 8]; % order of channels reading left to right, bottom to top
db(i).pupil = {};
db(i).NIDQ = {[neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g1\'  db(i).animal '_g1_t0.nidq.bin']};
db(i).location = 'V1';
db(i).probe = 'NP24';
db(i).probe_orient = {'sagittal','external'};
db(i).rec_map_files = {[neuropixDir db(i).animal '\' db(i).date '\' db(i).animal '_g0\' db(i).animal '_g0_imec0\' db(i).animal '_g0_t0.imec0.ap.bin'],...
                        [neuropixDir db(i).animal '\' db(i).date '\'  db(i).animal '_g0\'  db(i).animal '_g0_t0.nidq.bin']};
db(i).rec_field = [-256 -406 120]; % x_coord, y_coord, lfpchannel

top_MS_recording = i;

%%
for i = [130:top_MSanaes_recording 160:top_MS_recording] % need to run on only recordings with access to raw data files
    for j = 1:numel(db(i).injection)-1
        db(i).timepointsS(1,j+1) = sum(db(i).DurationS(1:j));
    end
    
    for k = 1:numel(db(i).breakmin)
        db(i).breakms{k,:} = zeros(1,db(i).breakmin{k}*6e4);
        db(i).timepointsbreaksms(1,k+1) = (db(i).timepointsS(k+1) + sum(cellfun(@numel,(db(i).breakms(1:k))))/1000)*1000;
    end
    
    db(i).timepointsms = db(i).timepointsS*1000;
end


%dualprobeexp = [12 16 18 22 24 26 28 38 40 42 44 62:2:92]; % index of first probe (dualprobeexp+1 corresponds to all second probes - V1 in neuropixels experiments)
Batch1PFC = [48:57 60 61];
Batch2PFC = [62:2:92];
Batch3PFC = [162 164 166 168 172 174 186 187 188 190 194 196 212 214]; % Awake Neuropixels in PFC MS
%AllPFC = [Batch1PFC Batch2PFC];
Batch2V1 = [63:2:93]; % V1 probe in dual probe recordings BD
%TCBfirst = AllPFC([2 8 14 16 18 24]);
%Controlfirst = AllPFC([4 6 10 12 20 22 26 28]);
%Adaptation1 = [100:105];
%Adaptation2 = [110:115];
%Adaptation3 = [120:125];
%AllAdaptation = [Adaptation1 Adaptation2 Adaptation3];
AnaesPFC = [130:135 137 138 140 142 145 146 148]; % Anaesthetised Neuropixels in mPFC
AnaesV1 = [147 149 198 201 208 209 216 217]; % Anaesthestised Neuropixels in V1
%Slice = [150]; % Slice recordings in  mPFC
AwakeV1 = [178 179 180 181 182 183 184 185 189 191 192 193 195 197 199 200 203 205 210 211 213 215]; % Awake Neuropixels in V1 with visual grating stim MS
% save('database','db');
clear i j k namelist dataDir dbID SR topDir neuropixDir top_MSanaes_recording top_MS_recording;
return
