# pull image from jupyterhub
FROM jupyterhub/jupyterhub

# install dependences
RUN pip install notebook


# add user admin-admin
ARG USER=admin
ARG PASSWD=admin

RUN useradd -m ${USER} -p $(openssl passwd ${PASSWD})

COPY entrypoint.sh /entrypoint.sh

# mount home
VOLUME /home

# copy Jupyter Notebook from NOTEBOOKS_FROM to HUB_PATH
ENTRYPOINT [ "/entrypoint.sh" ]


