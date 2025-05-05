# Docker Environment for Python and Machine Learning Development 

This Docker environment includes:
- Python 3.11
- JupyterLab
- ML libraries: NumPy, Pandas, Matplotlib, Scikit-learn, TensorFlow
- The current directory is mounted into the container at `/home/devuser`

## Deploy Docker Container (run it once)

1. Build the Docker image:

```bash
docker build -t docker-dev-environment .
```

2. Run the container:

```bash
docker run -it -p 8888:8888 -v $(pwd):/home/devuser --name dev-env-container docker-dev-environment
```

3. Access JupyterLab:
Open your browser and go to: [http://localhost:8888](http://localhost:8888)

## Log into the container

```bash
docker start -ai dev-env-container
```
