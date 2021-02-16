<div align="center">
<h1>GDUtils Terminal + Bot</h1>
</div>

<details>
    <summary>Environmental Variables</summary>

| Variable | Value | Example | Required | Description |
| :---: | :---: | :---: | :---: | :---: |
| HEROKU_EMAIL | Heroku email | abc@abc.com | True | Just Give the email you used for Heroku Account|
| HEROKU_API_KEY | Heroku API key | xxxxxxx-xxxx-xxxx-xxxx-xxxxxx | True | Get it from [Heroku](https://dashboard.heroku.com/account/applications/authorizations/new) |
| REGION | Heroku Container Region | US or EU | False | Needed only if you need  a EU Container |
| HEROKU_APP | Heroku app name | Name Must be unique | True | Heroku app name that needs to be Updated or Created |
| SA_ZIP | Direct Link | https://abc.com/sa.zip | False* | Service accounts to be zipped in a way that there should be a folder named accounts containing SA Jsons |
| GH_REPO | SA repo name | accounts | False* | Git repo name where SA's are Uploaded |
| GH_USER | Github Username | Nenokkadine | False* | Github username Where SA are uploaded |
| GH_AUTH_TOKEN | Github Auth Token | xxxxxxxxxxxxxx | False* | Get this from [Github](https://github.com/settings/tokens/new) With Scopes `repo` |

</details>
