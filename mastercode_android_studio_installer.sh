#!/bin/bash

LOGFILE="mastercode_android_studio_install.log"

echo "🔧 MasterCode Auto Installer Tool - Android Studio Setup" | tee -a "$LOGFILE"
echo "🕓 Starting at: $(date)" | tee -a "$LOGFILE"
echo "==========================================" | tee -a "$LOGFILE"

# Step 1: Update and install dependencies
echo "📦 Installing dependencies..." | tee -a "$LOGFILE"
sudo apt update && sudo apt install -y openjdk-17-jdk wget unzip lib32z1 lib32ncurses6 libbz2-1.0:i386 libstdc++6:i386 | tee -a "$LOGFILE"

# Step 2: Download Android Studio
echo "⬇️  Downloading Android Studio..." | tee -a "$LOGFILE"
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.3.1.14/android-studio-2024.3.1.14-linux.tar.gz -O android-studio.tar.gz | tee -a "$LOGFILE"

# Step 3: Extract it
echo "📂 Extracting archive..." | tee -a "$LOGFILE"
tar -xvzf android-studio.tar.gz | tee -a "$LOGFILE"

# Step 4: Move to /opt
echo "📁 Moving to /opt directory..." | tee -a "$LOGFILE"
sudo mv android-studio /opt/ | tee -a "$LOGFILE"

# Step 5: Add shortcut to PATH
echo "🔗 Creating symlink for easy launch..." | tee -a "$LOGFILE"
sudo ln -sf /opt/android-studio/bin/studio.sh /usr/local/bin/android-studio | tee -a "$LOGFILE"

# Step 6: Launch Android Studio
echo "🚀 Launching Android Studio..." | tee -a "$LOGFILE"
android-studio &

echo "✅ Done! Android Studio should now be launching..." | tee -a "$LOGFILE"
echo "🗂️  Full log saved at: $LOGFILE"
