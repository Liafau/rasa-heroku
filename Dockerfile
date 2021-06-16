FROM ubuntu 18.04
ENTRYPOINT[]
RUN apt-get update
ADD . /app/
RUN python -m pip install -U pip
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh
