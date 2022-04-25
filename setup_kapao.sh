pip install torch==1.9.1+cu111 torchvision==0.10.1+cu111  -f https://download.pytorch.org/whl/torch_stable.html

pip install msgpack==0.6.0

pip install -r requirements.txt


python data/scripts/download_models.py

apt-get update

# apt-get install ffmpeg libsm6 libxext6  -y
# apt-get install opencv-python
apt-get install -y python3-opencv

pip install seaborn