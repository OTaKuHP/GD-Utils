#!/bin/bash
wget -q https://github.com/nenokkadine/gdutils/releases/latest/download/gdutils.tar.gz && tar xzf gdutils.tar.gz && rm -rf gdutils.tar.gz
if [[ -n $GH_USER && -n $GH_AUTH_TOKEN && -n $GH_REPO ]]; then
	echo "Usage of Service Accounts (Git), Clonning git"
	git clone https://"$GIT_TOKEN"@github.com/"$GIT_USER"/"$GIT_REPO" accounts
    mv accounts/*.json sa/
	rm -rf accounts
elif [[ -n $GH_AUTH_TOKEN ]]; then
	echo "Usage of Service Accounts (Zip URL), Downloading"
	wget -q $SA_ZIP -O accounts.zip
    unzip -qq accounts.zip
    mv accounts/*.json sa/
	rm -rf accounts
else
	echo "Neither Service Accounts Nor Token Provided. Exiting..."
	exit 0
fi

if [[ -n $GD_CONFIG ]]; then
	wget -q $GD_CONFIG -O /app/config.js
elif [[ -n $GD_CONFIG_BASE64 ]]; then
    echo "$GD_CONFIG_BASE64" | base64 --decode > /app/config.js
else
	echo "Provide constants.js URL or BASE64 encoded String to Run the bot. Exiting..."
	exit 0
fi
node server.js &

