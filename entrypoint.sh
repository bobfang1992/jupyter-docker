#!/bin/sh

export NODE_OPTIONS=--max-old-space-size=4096
/opt/conda/envs/dev/bin/jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1 --no-build
/opt/conda/envs/dev/bin/jupyter labextension install jupyterlab-plotly@1.5.0 --no-build
/opt/conda/envs/dev/bin/jupyter labextension install plotlywidget@1.5.0 --no-build
/opt/conda/envs/dev/bin/jupyter lab build
unset NODE_OPTIONS
/opt/conda/envs/dev/bin/jupyter lab --allow-root --ip="0.0.0.0" --notebook-dir="/notes" --NotebookApp.password="sha1:485be2efd10b:a1b93081ee7019e639fbab08c6d3005f229d386c"

