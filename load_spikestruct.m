% load spikestruct

function [spikestruct] = load_spikestruct(shared_drive,db,exp) % shared_drive = 'X:' or 'S:'
topDir = [shared_drive '\cortical_dynamics\User\ms1121\Analysis Testing\'];
expDir = [topDir 'Exp_' num2str(exp) '_' db(exp).animal '_' db(exp).date];
load([expDir '\spikestruct']);
end