These 4 batch files will take you through the process of converting a recording or set of recordings into an RVC voice model that can be used for voice cloning. No special driver is required to use this outside of what is in this repository.

Installer
This will download the correct version of Python, install the latest nightly ROCm build for Windows, and several other dependencies that require patching. It is currently set for gfx110x (RDNA3) GPUs. If you have RDNA4 or some other AMD card, look at the "links for other ROCm builds" below and replace the link accordingly. It will then clone the repository to your disk and the correct files. Make sure you have Git and Git LFS installed.

Step 1: Extract Features
This will take the voice file(s) placed in the dataset folder and extract f0, pitch, and index.

Step 2: Train Model
This is the long one - this is the model training step. This will (hopefully) take advantage of your GPU to accelerate, but you can still expect it to take around 2 hours for more epochs.

Step 3: Cleanup
This is available if you would like to reset the folders automatically for a new voice. It will delete anything that was created in steps 2 and 3.


Links for other ROCm Builds.
https://github.com/ROCm/TheRock/blob/main/RELEASES.md#torch-for-gfx110X-dgpu

Other sources shamelessly stolen from:
https://huggingface.co/Rejekts/project/tree/main?clone=true
https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI