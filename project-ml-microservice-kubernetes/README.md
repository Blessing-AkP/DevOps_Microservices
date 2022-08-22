[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Blessing-AkP/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Blessing-AkP/DevOps_Microservices/tree/master)

## INTRODUCTION

This project operationalizes a Machine Learning Microservices API using various DevOps approaches.
The main goal of this project is to shows how a pre-trained SKLEARN model, that has been trained to predict housing prices in Boston with several other features, can be operationalized and deployed in containers using kubernetes. The python flask app serve as application (app.py) for the model, which serves out prediction about housing prices through API calls. Any pre-trained machine learning model, such as those for image recognition and data labeling, could be incorporated into this project.


## Procedures

Using Kubernetes, which is an open-source technology for automating the deployment of containerized applications, the project's goal is to operationalize this functional machine learning microservice, through the following processes.
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that thecode has been tested successfully.

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Setup Kubernetes Locally

In order to test out our application we need to configure kubernetes locally. Consider the following procedures to setup and configure kubernetes.

#### System requirement:

•	2 CPUs or more
•	2GB of free memory
•	20GB of free disk space
•	Internet connection
•	Container or virtual machine manager, such as: Docker, Hyperkit, Hyper-V, KVM etc.

_For the purpose of this project we would have docker installed then run the following command for linux operating system._

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

for other operating system, please visit  https://minikube.sigs.k8s.io/docs/start/
Incase you're yet to install docker, visit: https://docs.docker.com/get-docker/

Test your cluster with: 
`minikube start`

Next, docker image for flask app using the following command:
`docker build -t username/flaskapp:tag .`

**note:** _The image can be any name and the tag is optional_

Next, list the docker image so as to get the flask app running:
`docker image ls`

Then run the flask app
`docker run -it -p 8000:80 username/flaskapp:tag`

**Now we can run kubernetes using kubectl**

`kubectl get pods
kubectl run flask-app --image=username/flaskapp:tag --port=80
sleep 100`

Enable port forwarding to forward the containers ports to a host
`kubectl port-forward flask-app 8000:80`



[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Blessing-AkP/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Blessing-AkP/DevOps_Microservices/tree/master)
