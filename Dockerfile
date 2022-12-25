FROM jupyterhub/jupyterhub


#WORKDIR $HUB_PATH
#VOLUME [ "/home" ]
COPY jupyterhub_config.py jupyterhub_config.py
#COPY $NOTEBOOKS_FROM /home$NOTEBOOKS_FROM

ARG USER=admin
ARG PASSWORD=amdin

RUN useradd ${USER} -p ${PASSWORD}


EXPOSE 80

CMD ["jupyterhub"]



