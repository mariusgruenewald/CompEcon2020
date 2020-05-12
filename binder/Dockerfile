FROM jupyter/minimal-notebook:latest

USER root

#RUN apt-get update \
# && apt-get -y install --no-install-recommends gnupg git vim less \
# && rm -rf /var/lib/apt/lists/*

RUN apt-get install nodejs\
	&& apt-get install npm


COPY . ${HOME}/
RUN pip install numpy \
 && pip install casadi\
 && pip install scipy\
 && pip install matplotlib\
 && pip install plotly==4.7.1\
 && pip install "notebook>=5.3" "ipywidgets==7.5"\
 && pip install jupyterlab "ipywidgets=7.5"\
 && pip install pandas\
 && chown -R ${NB_UID} ${HOME}
 
RUN jupyter labextension install jupyterlab-plotly@4.7.1

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.7.1

USER ${NB_USER}
WORKDIR ${HOME}
CMD ["jupyter", "lab"]
