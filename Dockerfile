FROM python:3.11-slim

# Install packages
RUN apt-get update && apt-get install -y \
    git curl vim build-essential

# Install Python packages
RUN pip install --upgrade pip
RUN pip install \
    numpy pandas matplotlib jupyterlab \
    scikit-learn tensorflow --extra-index-url https://pypi.org/simple/

# Create user and working directory
RUN useradd -ms /bin/bash devuser
USER devuser
WORKDIR /home/devuser

# Expose Jupyter port
EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
