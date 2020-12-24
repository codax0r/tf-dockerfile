# Dockerfile for tf 2 - python 3 and jupyter

FROM tensorflow/tensorflow:2.3.1-gpu-jupyter

RUN apt-get update && apt-get install -y libncurses5-dev vim

RUN pip install --upgrade pip && pip uninstall --yes enum34

RUN pip install Cython

RUN pip install sunpy[all] sklearn numba pandas statsmodels seaborn tensorflow-addons wandb

RUN echo "jeh:x:1000:1000::/tf:/bin/bash" >> /etc/passwd

RUN echo "1000:x:1000:" >> /etc/group
