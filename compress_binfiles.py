import numpy as np  
import mtscomp 

# List of files to compress (filename and its number of channels):
# All files must be either .dat or .bin
flist = [
['R:\\Neuropix\\Shared\\Data\\M210316_MS\\160321\\M210316_MS_g0\\M210316_MS_g0_imec0\\M210316_MS_g0_t0.imec0.ap.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210319_MS\\190321\\M210319_MS_g0\\M210319_MS_g0_imec0\\M210319_MS_g0_t0.imec0.ap.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210521_MS\\210521\\M210521_MS_g0\\M210521_MS_g0_imec0\\M210521_MS_g0_t0.imec0.ap.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210610_MS\\100621\\M210610_MS_g0\\M210610_MS_g0_imec0\\M210610_MS_g0_t0.imec0.ap.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210611_MS\\110621\\M210611_MS_g0\\M210611_MS_g0_imec0\\M210611_MS_g0_t0.imec0.ap.bin',385]
]

flist = [
['R:\\Neuropix\\Shared\\Data\\M210316_MS\\160321\\PFC\\LFP\\M210316_MS_g0_t0.imec0.lf.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210319_MS\\190321\\PFC\\LFP\\M210319_MS_g0_t0.imec0.lf.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210521_MS\\210521\\PFC\\LFP\\M210521_MS_g0_t0.imec0.lf.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210610_MS\\100621\\PFC\\LFP\\M210610_MS_g0_t0.imec0.lf.bin',385],
['R:\\Neuropix\\Shared\\Data\\M210611_MS\\110621\\PFC\\LFP\\M210611_MS_g0_t0.imec0.lf.bin',385]
]

# The actual compression loop
for f in range(0, len(flist)):
    if flist[f][0][-4:] == '.dat':
        outfilename = flist[f][0][:-4] + '.cdat'
    elif flist[f][0][-4:] == '.bin':
        outfilename = flist[f][0][:-4] + '.cbin'
    else:
        raise ValueError('file neither .dat nor .bin')
    print('Compressing ' + flist[f][0])    
    mtscomp.compress(flist[f][0], out=outfilename, outmeta=outfilename + '.ch', sample_rate=30000.0, 
    n_channels=flist[f][1], dtype=np.int16)     