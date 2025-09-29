@echo off
ECHO This will install Python and download the relevant files from Github.
pause
cls
curl -o pythoninstaller.exe https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe
ECHO Press any key to continue after you have installed Python 3.11. Make sure to set Python in your PATH!
pythoninstaller.exe
pause
cls
python -m pip install -r requirements.txt
python -m pip install --index-url https://rocm.nightlies.amd.com/v2/gfx110X-dgpu/ --pre torch torchaudio torchvision
python -m pip install git+https://github.com/BanjoFuzz/fairseq.git
ECHO Make sure you have Git and Git LFS installed before proceeding. We will now clone the git repository. If you have already cloned it, you can close this and move to step 2.
pause
cls
git lfs install
git clone https://github.com/BanjoFuzz/ROCm-Windows-RVC-VoiceCloning.git
cd ROCm-Windows-RVC-VoiceCloning
mkdir dataset
ECHO Download complete. Open the ROCm-Windows-RVC-VoiceCloning directory, put the voice file(s) you would like to train on in the "dataset" folder, then run part 1.
pause
EXIT