# parse-server-docker
Simple docker image for parse-server

As you might now Parse (parse.com) decided to wind down their services beginning today (January 28, 2016). To make things easier for the community, they published an open source version of their actual servers which can be run and maintained locally.

If you are willing to continue to use Parse API’s in your applications, you will need to run that Parse Server on your server.

You can reach the repository of the Parse Server from here: https://github.com/ParsePlatform/parse-server

This Docker File helps you to install & run Parse Server on your server in just seconds.

If you have any questions related to this Docker File, you can reach us out anytime by just tweeting: https://twitter.com/instainer

## Variables
Environment variables and default values for parse-server;
APP_ID=myAppId
MASTER_KEY=mySecretMasterKey
FILE_KEY=optionalFileKey

## Running

Run on Instainer
[http://instainer.com/?deploy=instainer/parse-server](http://instainer.com/?deploy=instainer/parse-server)

Quick run;
docker run instainer/parse-server

Custom parameters;
docker run -d -t -i -e APP_ID='my-app' -e MASTER_KEY='master_key' -e FILE_KEY='file_key' -p 8080:8080 instainer/parse-server
