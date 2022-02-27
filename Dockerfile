#Pro Userbot Start Clonning ⚡♥️
RUN git clone https://github.com/surturbot/THANOS-USERBOT.git /root/userbot

#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

RUN cd /
RUN git clone https://github.com/LEGEND-AI/LEGEND-MUSIC
RUN cd LEGEND-MUSIC
WORKDIR /LEGEND-MUSIC

RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD python3 main.py
