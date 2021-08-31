FROM ubuntu:18.04

# Prerequisites
RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget
RUN apt-get install sudo -y

# Set up new user
RUN adduser --disabled-password --gecos '' developer
RUN adduser developer sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER developer
WORKDIR /home/developer

# Prepare Android directories and system variables
RUN mkdir -p Android/sdk
ENV ANDROID_SDK_ROOT /home/developer/Android/sdk
RUN mkdir -p .android && touch .android/repositories.cfg

# Set up Android SDK
RUN wget -O sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
RUN unzip sdk-tools.zip && rm sdk-tools.zip
RUN mv tools Android/sdk/tools
RUN cd Android/sdk/tools/bin && yes | ./sdkmanager --licenses
RUN cd Android/sdk/tools/bin && ./sdkmanager "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29" "cmdline-tools;latest"
ENV PATH "$PATH:/home/developer/Android/sdk/platform-tools" 

# Download Flutter SDK
RUN git clone https://github.com/flutter/flutter.git
ENV PATH "$PATH:/home/developer/flutter/bin"

# Enable flutter web
RUN flutter channel stable
RUN flutter upgrade

#Copy project
WORKDIR /home/developer/workspace/store_flutter
COPY . .

#Change project owner
WORKDIR /home/developer/workspace
RUN sudo chown -R developer store_flutter

#Install dependencies
WORKDIR /home/developer/workspace/store_flutter
RUN flutter pub get

#Install chrome and remove
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt install ./google-chrome-stable_current_amd64.deb -y
RUN rm -f ./google-chrome-stable_current_amd64.deb

# Run basic check to download Dark SDK
RUN flutter doctor -v

EXPOSE 1234