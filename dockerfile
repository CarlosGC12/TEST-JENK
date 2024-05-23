FROM python
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip install flask
COPY pagina.html /home/myapp/templates/
COPY app.py /home/myapp
EXPOSE 80
CMD python3 /home/myapp/app.py
