@echo off
ECHO This file will process the voice files you have placed in the dataset folder to prepare for training.
pause
cls
mkdir "%~dp0\logs\dataset"
ECHO Step 1. Preprocessing dataset
python "%~dp0\infer\modules\train\preprocess.py" "%~dp0\dataset" 40000 2 "%~dp0\logs\dataset" False 3.0
ECHO Step 2. Extracting Features
python "%~dp0\infer\modules\train\extract\extract_f0_rmvpe.py" 1 0 0 "%~dp0\logs\dataset" True
python "%~dp0\infer\modules\train\extract_feature_print.py" cuda:0 1 0 0 "%~dp0\logs\dataset" v2
Echo Step 3. Training Index
python trainindex.py
ECHO You are now set to begin training - be warned that Step 3 is the long part of the process!
pause
