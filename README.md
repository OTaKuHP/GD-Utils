<div align="center">
<h1>GDUtils Terminal + Bot</h1>
<h3>Gd-Utils is just another Tool which helps us to Bypass the 750GB daily limit by Google</h3>
</div>
🌟 This repo is just for heroku deployment of GDUtils

### Pre Requisites
1️⃣ [Github Account](https://github.com)
2️⃣ [Heroku Account](https://heroku.com)
3️⃣ [Telegram Account](https://telegram.org)
4️⃣ [Some Patience](https://google.com)

### Deployment
🔷 Here I Don't Provide any Deploy button to heroku, We Use Github Actions to Deploy container to Heroku 

🔷 Follow below Steps to deploy

#### It's as simple as 
1. Fork this Repo
2. Go to Repository `Settings` -> `Secrets`
![Secrets](assets/secrets.png)
3. Now set the below Variables in the Github Repository Secrets
<details open="open">
    <summary>♻️ Environmental Variables</summary>

| Variable | Value | Example | Required | Description |
| :---: | :---: | :---: | :---: | :---: |
| HEROKU_EMAIL | Heroku email | abc@abc.com | True | Just Give the email you used for Heroku Account|
| HEROKU_API_KEY | Heroku API key | xxxxxxx-xxxx-xxxx-xxxx-xxxxxx | True | Get it from [Heroku](https://dashboard.heroku.com/account/applications/authorizations/new) |
| REGION | Heroku Container Region | EU | False | Needed only if you need  a EU Container |
| HEROKU_APP | Heroku app name | Name Must be unique | True | Heroku app name that needs to be Updated or Created (Should be in lowercase) |
| SA_ZIP | Direct Link | https://abc.com/sa.zip | False* | Service accounts to be zipped in a way that there should be a folder named accounts containing SA Jsons |
| GH_REPO | SA repo name | accounts | False* | Git repo name where SA's are Uploaded |
| GH_USER | Github Username | Nenokkadine | False* | Github username Where SA are uploaded |
| GH_AUTH_TOKEN | Github Auth Token | xxxxxxxxxxxxxx | False* | Get this from [Github](https://github.com/settings/tokens/new) With Scopes `repo` |
| BOT_TOKEN | Telegram Bot Token | 123456:abcdef | True | Get this from [Telegram](https://t.me/botfather) |
| AUTH_CHATS | Authorized Chats | 'UserA','UserB' | True | Telegram Username's Should be Given and Should be in Single Quotes |
| HTTP_USER | Username | user | False | HTTP Basic auth adds an Extra Layer security for you app (recommended) |
| HTTP_PASS | Password | pass | False | HTTP Basic auth adds an Extra Layer security for you app (recommended) |
</details>
4. After Setting this 

