FROM jupyter/tensorflow-notebook

USER root

RUN apt-get update 
# && apt-get -y install --no-install-recommends gnupg git vim less \
# && rm -rf /var/lib/apt/lists/*

#RUN apt-get -y install --no-install-recommends nodejs\
#	&& apt-get -y install --no-install-recommends npm

#RUN apt-get install python-setuptools

COPY . ${HOME}/




RUN pip install numpy \
 && pip install plotly==5.8.0\
 && pip install "ipywidgets>=7.6"

RUN chown -R ${NB_USER} ${HOME}
 
USER ${NB_USER}
 
#RUN jupyter labextension install jupyterlab-plotly@4.7.1

#RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.7.1


CMD ["jupyter", "lab"]
