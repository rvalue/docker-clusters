# Docker Clusters

Got Docker ?

This repo provides some basic clusters for rapid local development.

**Please do not use them in production!**

Documentation for usage for each is in its appropriate folder.

Kindly refer to LICENSE documents of each dependencies in their respective Docker image repositories. Also, if you find any license violation, please report in an issue.

Currently supported clusters:

* Elastic Search 
	* [v1.7][esv1]
* MongoDB 
	* [v3.4][mongov3]

## Prerequisites

Each of the cluster setup has been tested with [Docker Toolbox][docker-toolbox] on OSX Sierra. 
Using this with [Docker for Mac][docker-mac] might fail.

If you don't already have a Virtualbox, download from [here][vbox-downloads]. 
Incase you are not able to get Virtualbox working with Docker/Docker Machine, then download version [5.1.20 r114629][vbox-working].


[docker-toolbox]: https://www.docker.com/products/docker-toolbox
[docker-mac]:     https://store.docker.com/editions/community/docker-ce-desktop-mac
[vbox-downloads]: https://www.virtualbox.org/wiki/Downloads
[vbox-working]:   http://download.virtualbox.org/virtualbox/5.1.20/VirtualBox-5.1.20-114629-OSX.dmg
[esv1]:           https://www.elastic.co/guide/en/elasticsearch/reference/1.7/index.html
[mongov3]:        https://docs.mongodb.com/manual/release-notes/3.4/