
[![aderounmu](https://circleci.com/gh/aderounmu/udacity-operationliaze-ml.svg?style=svg)](https://app.circleci.com/pipelines/github/aderounmu/udacity-operationliaze-ml/2/workflows/d97f91e4-37d8-43ee-b9b1-2261124d1530)

# 👾 Operationalize of Machine learning model


This application is a Machine Learning Microservice API that predicts housing costs in Boston based on certain features. It uses a pre-trained "sklearn" model to make these predictions. The API is built using a Python Flask app that provides API calls to deliver predictions (inference) about the housing prices. The API is provided in a file called "app.py."  You may read more about the data on [the data source site] (https://www.kaggle.com/c/boston-housing), which was where the original Kaggle data came from. This project demonstrates the ability to operationalize a machine learning model as a microservice API, and it could be extended to include other pre-trained machine learning models for different purposes such as image recognition or data labeling.

## Requirements

 * [Docker Desktop](https://www.docker.com/products/docker-desktop/)

 * [Minikube](https://minikube.sigs.k8s.io/docs/start/)

 * [hadolint](https://github.com/hadolint/hadolint)

 * [Docker](https://docs.docker.com/engine/install/)

 * [Python3.7](https://www.python.org/downloads/release/python-370/)
  
## File directory

    .
    ├── .circleci               # Circle circle configuration folder
    ├── model_data              # model data 
    ├── output_txt_files        # Submission output files
    ├── Dockerfile              # Docker file for creating images 
    ├── make_prediction.sh      # Script to test docker and kubernetes deployment
    ├── upload_docker.sh        # Script to upload to dockerhub
    ├── run_docker.sh           # Script to build image and run container
    ├── Makefile                # Make file to run make commands like lint , setup and install dependencies
    ├── app.py                  # Main application file containing flaskapi
    ├── requirements.txt        # Python requirements.txt 
    ├── run_kubernetes.sh       # Script to deploy container to cluster 
    └── README.md
## Usage

#### clone my-project with git

```bash
git clone https://github.com/aderounmu/udacity-operationliaze-ml.git

cd udacity-operationliaze-ml
```

#### Create the venv
```bash
  make setup  
```
this creates a hidden virtual environment folder for python

#### Activate venv
```bash
  source ~/.devops/bin/activate
```

#### Install dependencies
```bash
  make install
```

#### Lint application
```bash
  make lint
```


#### Run docker container
```bash
    chmod u+x run_docker.sh
  ./run_docker.sh
```

#### Upload to docker hub
```bash
    chmod u+x upload_docker.sh
  ./upload_docker.sh
```

#### Run in kubernetes
```bash
    chmod u+x run_kubernetes.sh
  ./run_kubernetes.sh
```


#### Test API endpoint optional

```bash
    chmod u+x make_prediction.sh
  ./make_prediction.sh
```