FROM python

EXPOSE 8501

WORKDIR /app

COPY requirements.txt ./

RUN python3 -m pip install -r requirements.txt

COPY . .