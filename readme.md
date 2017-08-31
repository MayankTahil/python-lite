# Build Docker Image

This docker uses busybox to install miniconda that installs python3 and pip3. You can call Python 3.4.5 interpreter via the `python` command and call pip3 to install modules via the `pip` command within the container. 

> Note: You can pull this image from [Docker Hub](https://hub.docker.com/r/mayankt/python-lite/) via the `docker pull mayankt/python-lite:3.4.5` command. 

### Step 1

Clone the repository and change into its directory : 

```bash
git clone https://github.com/MayankTahil/python-lite.git
cd python-lite
```

### Step 2

Type in the following command on your docker host to build your docker image : 

`docker build -t python-lite .`

### Step 3

Run the following command to execute the container and drop into Python's CLI : 

`docker run -it --rm --name=python-cli python-lite python`

## Use as Base Image

This image serves as a base iamge for other docker images that require a simple light weight python environment. Start off your Dockerfiles with the following lines to being : 

```
FROM mayankt/python-lite:3.4.5
```
