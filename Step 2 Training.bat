@echo off
ECHO This will begin training the model for 100 epochs, checkpointing every 10.
ECHO If you want it to run further then edit trainmodel.py. 
ECHO Your index is in logs/dataset, and the epochs will be generated in assets/weights.
ECHO Press any key to begin...
pause
cls
python trainmodel.py
pause
EXIT