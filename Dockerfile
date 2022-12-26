FROM jupyterhub/jupyterhub


#WORKDIR $HUB_PATH
#VOLUME [ "/home" ]
COPY jupyterhub_config.py jupyterhub_config.py
#ENTRYPOINT [ "entrypoint.sh" ]

#COPY $NOTEBOOKS_FROM /home$NOTEBOOKS_FROM
ARG USER=admin
ARG PASSWORD=admin
RUN pip install notebook

RUN useradd ${USER} -p $(openssl passwd ${PASSWORD}) -m
VOLUME /home
EXPOSE 8000
CMD ["jupyterhub"]



