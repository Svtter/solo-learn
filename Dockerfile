FROM pytorch/pytorch:2.4.1-cuda11.8-cudnn9-devel

WORKDIR /workspace
COPY requirements.txt .
RUN pip install -r requirements.txt -i https://mirrors.sustech.edu.cn/pypi/web/simple && \
  pip install jupyterlab matplotlib


# RUN pip3 install .[dali,umap,h5] --extra-index-url https://developer.download.nvidia.com/compute/redist

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token='abcd'"]
