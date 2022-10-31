FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime
MAINTAINER myoungseok.chae@qraftec.com

COPY venus venus
COPY dist dist

RUN pip install ./venus/.
RUN pip install ./dist/kirin_*
RUN pip install ./dist/qraft_*.whl

RUN cp /workspace/dist/kirin.key /workspace

ENV PYTHONPATH "${PYTHONPATH}:/workspace/emps"


