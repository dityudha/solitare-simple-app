### Single Build
FROM python:3.9
COPY . /home/soleluna/solitare-simple-app
WORKDIR /home/soleluna/solitare-simple-app
EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["python", "app.py"]


### Multistage Build
# Stage 1: Build
#FROM python:3.9 as build

#WORKDIR /home/soleluna/solitare-simple-app
#COPY /home/soleluna/solitare-simple-app .
#RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Runtime
#FROM python:3.9-slim as runtime

#WORKDIR /app
#COPY --from=build /app /app

#EXPOSE 5000
#CMD ["python", "app.py"]
