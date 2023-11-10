## Microservices at Scale with AWS & Kubernetes 

---

This Cloud DevOps project focuses on operationalizing a machine learning microservice API using industry-standard tools like Docker, Kubernetes, AWS Lambda, and CircleCI. The project is designed to offer practical and hands-on experience in deploying and managing a containerized machine learning application within a scalable and resilient environment.

---

### A. Dependencies
#### A.1. Python
Essential for executing project code and managing dependencies.
[Download and install the python](https://www.python.org/downloads/). 

#### A.2. Docker Desktop
Required to create containers for individual microservices.
Installation guide:
* [macOS](https://docs.docker.com/docker-for-mac/install/), 
* [Windows 10 64-bit: Pro, Enterprise, or Education](https://docs.docker.com/docker-for-windows/install/), 
* [Windows  10 64-bit Home](https://docs.docker.com/toolbox/toolbox_install_windows/). 


#### A.3. Kubernetes 
Utilize AWS EKS to establish a Kubernetes cluster, offering a robust platform for container orchestration.

#### A.4. AWS account to access AWS Lambda
Access AWS Lambda, a serverless computing platform, allowing seamless integration into cloud environments.
You'll need an [AWS account]

#### A.5. Circle CI
Utilize CircleCI with GitHub credentials to leverage continuous integration practices.
You may sign up on [CircleCI.com](https://circleci.com/signup/) with your GitHub credentials. 

---

### B. The Overarching Diagram

![Overview](https://camo.githubusercontent.com/bb29cd924f9eb66730bbf7b0ed069a6ae03d2f1a/68747470733a2f2f757365722d696d616765732e67697468756275736572636f6e74656e742e636f6d2f35383739322f35353335343438332d62616537616638302d353437612d313165392d393930392d6135363231323531303635622e706e67)

---

### Project Instructions

All of the following instructions are to be completed via a terminal/command line prompt. 
---
### Create and Activate an Environment

#### Git and version control
These instructions also assume you have `git` installed for working with Github from a terminal window, but if you do not, you can download that first from this [Github installation page](https://www.atlassian.com/git/tutorials/install-git).

**Now, you're ready to create your local environment!**

1. If you haven't already done so, clone the project repository, and navigate to the main project folder. 
```bash
git clone https://github.com/Blessing-AkP/DevOps_Microservices.git
cd DevOps_Microservices/project-ml-microservice-kubernetes
```

2. Create (and activate) a new environment, named `.devops` with Python 3. If prompted to proceed with the install `(Proceed [y]/n)` type y.
```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

At this point your command line should look something like: `(.devops) <User>:project-ml-microservice-kubernetes<user>$`. The `(.devops)` indicates that your environment has been activated, and you can proceed with further package installations.

3. Installing dependencies via project `Makefile`. Many of the project dependencies are listed in the file `requirements.txt`; these can be installed using `pip` commands in the provided `Makefile`. While in your project directory, type the following command to install these dependencies.
```bash
make install
```

Now most of the `.devops` libraries are available to you. There are a couple of other libraries that we'll be using, which can be downloaded as specified, below. 

---

#### Other Libraries

While you still have your `.devops` environment activated, you will still need to install:
* Docker
* Hadolint
* Kubernetes ([Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) if you want to run Kubernetes locally)

#### Docker

You will need to use Docker to build and upload a containerized application. If you already have this installed and created a docker account, you may skip this step.

1. You’ll need to [create a free docker account](https://hub.docker.com/signup), where you’ll choose a unique username and link your email to a docker account. **Your username is your unique docker ID.**

2. To install the latest version of docker, choose the Community Edition (CE) for your operating system, [on docker’s installation site](https://docs.docker.com/v17.12/install/). It is also recommended that you install the latest, **stable** release:

3. After installation, you can verify that you’ve successfully installed docker by printing its version in your terminal: `docker --version`

#### Run Lint Checks

This project also must pass two lint checks; `hadolint` checks the Dockerfile for errors and `pylint` checks the `app.py` source code for errors.

1. Install `hadolint` following the instructions, [on hadolint's page]( https://github.com/hadolint/hadolint): 

**For Mac:**
```bash
brew install hadolint
```
**For Windows:**
```bash
scoop install hadolint
```
2. In your terminal, type: `make lint` to run lint checks on the project code. If you haven’t changed any code, all requirements should be satisfied, and you should see a printed statement that rates your code (and prints out any additional comments):

```bash
------------------------------------
Your code has been rated at 10.00/10
```

That's about it! When working with kubernetes, you may need to install some other libraries, but these instructions will set you up with an environment that can build and deploy Docker containers.

