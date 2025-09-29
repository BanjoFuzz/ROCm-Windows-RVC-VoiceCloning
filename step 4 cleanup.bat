@echo off
ECHO WARNING: This will delete all the files that have been created (AKA everything in logs and weights) to set up for a new dataset. Make sure you have copied all the epochs and associated weights before running this.
pause
ECHO No, really, this deletes everything. No take-backs. Hours of work are about to go away! Are you sure you want that?
pause
rmdir /s /q %~dp0\logs\dataset
mkdir %~dp0\logs\dataset
rmdir /s /q %~dp0\assets\weights
mkdir %~dp0\assets\weights
ECHO Previous RVC has been deleted. Clear out the dataset folder and add new voice files to train a new RVC!
pause