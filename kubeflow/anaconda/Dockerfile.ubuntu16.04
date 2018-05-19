# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

ARG BASE_IMAGE=ubuntu:16.04
FROM $BASE_IMAGE

ENV HTTP_PROXY http://192.168.199.99:9999
ENV HTTPS_PROXY http://192.168.199.99:9999
ENV http_proxy http://192.168.199.99:9999
ENV https_proxy http://192.168.199.99:9999

ARG INSTALL_TFMA=yes

USER root

ENV DEBIAN_FRONTEND noninteractive

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/$NB_USER
ENV CONDA_DIR=$HOME/.conda
ENV PATH $CONDA_DIR/bin:$PATH

# Use bash instead of sh
SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -yq --no-install-recommends \
  apt-transport-https \
  build-essential \
  bzip2 \
  ca-certificates \
  curl \
  g++ \
  git \
  gnupg \
  graphviz \
  locales \
  lsb-release \
  sudo \
  unzip \
  vim \
  wget \
  zip \
  && apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Create jovyan user with UID=1000 and in the 'users' group
RUN useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
    chown -R ${NB_USER}:users /usr/local/bin

RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y google-cloud-sdk kubectl && \
    gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set metrics/environment github_docker_image

RUN chown -R ${NB_USER}:users /home/${NB_USER}

# Run everything below this as $NB_USER
USER $NB_USER

WORKDIR $HOME

# Setup work directory for backward-compatibility
RUN mkdir /home/$NB_USER/work

# Install Tini - used as entrypoint for container
RUN cd /tmp && \
    wget https://github.com/krallin/tini/releases/download/v0.18.0/tini && \
    mv tini /usr/local/bin/tini && \
    chmod +x /usr/local/bin/tini

# Install conda as jovyan user and check the md5 sum provided on the download site
ENV MINICONDA_VERSION 4.4.10
#ENV MINICONDA_VERSION 4.5.1

#Get Anaconda3.
RUN cd /tmp && \
    mkdir -p $CONDA_DIR && \
    wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh

#Install Anaconda3.
RUN cd /tmp && \
    /bin/bash Anaconda3-5.1.0-Linux-x86_64.sh -f -b -p ${CONDA_DIR}

# Update conda
RUN cd /tmp && \
    conda config --system --prepend channels conda-forge && \
    conda config --system --set auto_update_conda false && \
    conda config --system --set show_channel_urls true && \
    conda update -n base conda --yes && \
    conda update conda --yes

RUN cd /tmp && \
    conda update --all --yes && \
    conda clean -tipsy


