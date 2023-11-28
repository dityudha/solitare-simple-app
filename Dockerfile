FROM python:3.6
COPY . /home/soleluna/solitare-simple-app
WORKDIR /home/soleluna/solitare-simple-app
EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
