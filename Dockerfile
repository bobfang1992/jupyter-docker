FROM frolvlad/alpine-miniconda3:python3.7

RUN apk add --update nodejs nodejs-npm

RUN conda create -n dev python=3.7 \
	&& conda install -n dev nomkl pandas dask seaborn scikit-learn\
    && conda install -n dev -c conda-forge jupyterlab redis-py plotly arctic cufflinks-py camelot-py "ipywidgets=7.5"\
    && conda clean -afy\
    && mkdir -p /notes
COPY entrypoint.sh /opt/

ENTRYPOINT ["/opt/entrypoint.sh"]
