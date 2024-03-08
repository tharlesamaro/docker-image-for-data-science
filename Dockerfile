FROM python:3.9-slim

LABEL maintainer="Tharles Amaro <tharlesamaro@gmail.com>"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        gcc \
        libc-dev \
        libgomp1 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install --no-cache-dir numpy==1.25.2
RUN pip install --no-cache-dir pandas==1.5.3
RUN pip install --no-cache-dir matplotlib==3.7.1
RUN pip install --no-cache-dir seaborn==0.13.1
RUN pip install --no-cache-dir scipy==1.11.4
RUN pip install --no-cache-dir scikit-learn==1.2.2
RUN pip install --no-cache-dir tensorflow==2.15.0
RUN pip install --no-cache-dir keras==2.15.0
RUN pip install --no-cache-dir lightgbm==4.1.0
RUN pip install --no-cache-dir xgboost==2.0.3
RUN pip install --no-cache-dir jupyterlab==4.1.4
RUN pip install --no-cache-dir notebook==6.5.5
RUN pip install --no-cache-dir plotly==5.15.0
RUN pip install --no-cache-dir dash==2.16.1
RUN pip install --no-cache-dir streamlit==1.32.0
RUN pip install --no-cache-dir flask==3.0.2
RUN pip install --no-cache-dir gunicorn==21.2.0
RUN pip install --no-cache-dir sqlalchemy==2.0.28
RUN pip install --no-cache-dir beautifulsoup4==4.12.3
RUN pip install --no-cache-dir requests==2.31.0
RUN pip install --no-cache-dir fastapi==0.110.0
RUN pip install --no-cache-dir feature-engine==1.6.2
RUN pip install --no-cache-dir yellowbrick==1.5
RUN pip install --no-cache-dir ydata_profiling==4.6.4
RUN pip install --no-cache-dir catboost==1.2.3
RUN pip install --no-cache-dir torch==2.2.1

WORKDIR /app

CMD ["bash"]