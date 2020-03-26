FROM continuumio/miniconda

RUN apt-get update -yq \
    && apt-get install curl gnupg -yq python3-tk ghostscript\
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install nodejs -yq
RUN conda create -n dev python=3.7 \
	&& conda install -n dev jupyter pandas seaborn\
        && conda install -n dev -c conda-forge jupyterlab redis-py plotly arctic cufflinks-py camelot-py
RUN mkdir -p /notes
COPY entrypoint.sh /opt/

ENTRYPOINT ["/opt/entrypoint.sh"]
