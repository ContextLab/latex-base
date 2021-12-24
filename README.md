# Contextual Dynamics Lab LaTeX Template

This template repository provides a convenient way of setting up new paper-based projects.  The template includes our lab-recommended systems for organizing LaTeX code (including bibliography and figures), analysis code (e.g., notebooks for reproducing each figure and a containerized environment for guaranteeing the notebooks will run correctly), and data (raw and pre-processed), and all associated documentation.  The repository also includes scripts for automatically setting up the repository and compiling the latex files into PDFs.

# Using this template repository

There are two simple ways of using this repository as a template for a new project:

1. Visit the [GitHub page](https://github.com/ContextLab/latex-base) for this project and click the green "Use this template" button.  You will be taken to a new page that enables you to name and configure your new repository.
2. Create a [new GitHub repository](https://github.com/new) and select "ContextLab/latex-template" from the "Repository template" dropdown menu.  Then name and configure your repository from the same page.

# Basic setup

After cloning your new repository, you'll want to get it set up and configured for you to start using it in your new project:

1.  The first step is to **run the `setup.sh` script** in Terminal:
```bash
sh setup.sh
```
2.  Next, you'll want to **customize the `Dockerfile` to include any packages needed for your project**.
3.  You should also update the README files (including this one) to reference your paper (rather than this template).  Suggested example text for this file is provided below, and suggested code and data README files are provided in the code and data folders, respectively.

***

# *Paper title*

This repository contains data and code used to produce the paper ["_Paper title_"](link.to.preprint) by Authors. The repository is organized as follows:

```
root
└── code: all code used in the paper
    └── notebooks : Jupyter notebooks for paper analyses
└── data: all data used in the paper
    ├── raw : raw data before processing
    └── processed : all processed data
└── paper: all files needed to generate a PDF of the paper
    └── figs : pdf copies of each figure
        └── source: source files used to construct individual figure panels or components
    ├── CDL-bibliography: bibliography management based on https://github.com/ContextLab/CDL-bibliography
    └── admin: files and documents related to administrative tasks (e.g., cover letters, forms, etc.)    
```

We also include a Dockerfile to reproduce our computational environment. Instruction for use are below (copied and modified from [this project](https://github.com/ContextLab/sherlock-topic-model-paper)):

## One time setup
1. Install Docker on your computer using the appropriate guide below:
    - [OSX](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)
    - [Windows](https://docs.docker.com/docker-for-windows/install/)
    - [Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
    - [Debian](https://docs.docker.com/engine/installation/linux/docker-ce/debian/)
2. Launch Docker and adjust the preferences to allocate sufficient resources (e.g. > 4GB RAM)
3. Build the docker image by opening a terminal in this repo folder and enter `docker build -t cdl .`  
4. Use the image to create a new container for the workshop
    - The command below will create a new container that will map your local copy of the repository to `/mnt` within the container, so that all the files in the repo are shared between your host OS and the container. The command will also share port `9999` with your host computer so any jupyter notebooks launched from *within* the container will be accessible at `localhost:9999` in your web browser
    - `docker run -it -p 9999:9999 --name cdl -v $PWD:/mnt cdl`
    - You should now see the `root@` prefix in your terminal, if so you've successfully created a container and are running a shell from *inside*!
5. To launch any of the notebooks: `jupyter notebook --port=9999 --no-browser --ip=0.0.0.0 --allow-root`

## Using the container after setup
1. You can always fire up the container by typing the following into a terminal
    - `docker start --attach cdl`
    - When you see the `root@` prefix, letting you know you're inside the container
2. Close a running container with `ctrl + d` from the same terminal you used to launch the container, or `docker stop cdl` from any other terminal
