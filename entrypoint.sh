#!/bin/sh
alias jupyter="/opt/conda/envs/dev/bin/jupyter"
/opt/conda/envs/dev/bin/pip install alpha_vantage newsapi-python newscatcher
jupyter labextension install jupyterlab-plotly@4.7.1
jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.7.1
jupyter lab --allow-root --ip="0.0.0.0" --notebook-dir="/notes" --NotebookApp.password="sha1:485be2efd10b:a1b93081ee7019e639fbab08c6d3005f229d386c"

