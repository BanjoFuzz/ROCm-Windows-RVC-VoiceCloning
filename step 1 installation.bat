@echo off
ECHO This will install Python and download the relevant files from Github.
pause
curl -o pythoninstaller.exe https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe
pythoninstaller.exe
ECHO Press any key to continue after you have installed Python. Make sure to set Python in your PATH!
pause
python -m pip install --index-url https://rocm.nightlies.amd.com/v2/gfx110X-dgpu/ --pre torch torchaudio torchvision
python -m pip install requirements.txt
python -m pip install --force-reinstall git+https://github.com/BanjoFuzz/fairseq.git
ECHO Make sure you have Git and Git LFS installed before proceeding. We will now clone the git repository. If you have already cloned it, you can close this and move to step 2.
git lfs install
git clone https://github.com/BanjoFuzz/ROCm-Windows-RVC-VoiceCloning.git
cd ROCm-Windows-RVC-VoiceCloning
mkdir dataset
ECHO Download complete. Put the voice file(s) you would like to train on in the "dataset" folder, then run part 2.
pause
EXIT