FROM ubuntu:latest

USER root

RUN apt-get update 
# && apt-get -y install --no-install-recommends gnupg git vim less \
# && rm -rf /var/lib/apt/lists/*

RUN apt-get -y install --no-install-recommends nodejs\
	&& apt-get -y install --no-install-recommends npm\
	&& apt-get -y install --no-install-recommends python3

RUN apt-get -y install --no-install-recommends python3-pip 


COPY . ${HOME}/


RUN chown -R root ${HOME}

#RUN pip3 install numpy \
# && pip3 install casadi\
# && pip3 install scipy\
# && pip3 install tensorflow\
# && pip3 install matplotlib\
# && pip3 install plotly==4.7.1\
# && pip3 install "notebook>=5.3" "ipywidgets==7.5"\
# && pip3 install jupyterlab "ipywidgets==7.5"\
# && pip3 install pandas

RUN pip3 install numpy \
 && pip3 install tensorflow\
 && pip3 install plotly==4.7.1\
 && pip3 install "notebook>=5.3" "ipywidgets==7.5"\
 && pip3 install jupyterlab "ipywidgets==7.5"
 
 
RUN jupyter labextension install jupyterlab-plotly@4.7.1

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.7.1


CMD ["jupyter", "lab"]
