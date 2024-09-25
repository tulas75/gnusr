FROM python:3.11-bookworm
#RUN apt-get install build-essential 
#RUN apt-get install python3 py3-pip
COPY . /app
WORKDIR /app
RUN pip3 install --no-cache-dir --prefer-binary -r requirements.txt
EXPOSE 5000
CMD ["flask","--app","main.py","run","--host=0.0.0.0"]
