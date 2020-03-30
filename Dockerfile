FROM dclong/jupyter-nodejs

RUN pip3 install --no-cache-dir jupyterlab==2.0.1 \
    && jupyter labextension install @jupyter-widgets/jupyterlab-manager \
    && jupyter labextension install @jupyterlab/toc \
    && npm cache clean --force

COPY scripts /scripts
COPY settings /settings
