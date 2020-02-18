# Dockerfile for tf 2 - python 3 and jupyter

FROM tensorflow/tensorflow:2.1.0-gpu-py3-jupyter

RUN apt-get update && apt-get install -y libncurses5-dev vim

RUN pip install --upgrade pip && pip uninstall --yes enum34

RUN pip install pyts sunpy[all] sklearn numba netCDF4 pandas statsmodels fastdtw Cython seaborn tslearn seqlearn hmmlearn tensorflow-addons catch22 matrixprofile-ts imbalanced-learn

RUN echo "jeh:x:1000:1000::/tf:/bin/bash" >> /etc/passwd

RUN echo "1000:x:1000:" >> /etc/group
