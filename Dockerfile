FROM continuumio/miniconda
RUN conda create -n dev python=3.8 \
	&& conda install -n dev jupyter pandas seaborn\
        && conda install -n dev  -c conda-forge jupyterlab
RUN mkdir -p /notes
COPY entrypoint.sh /opt/

ENTRYPOINT ["/opt/entrypoint.sh"]
