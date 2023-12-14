# This is the first image:
FROM python:3.6 AS compile-image
COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt

WORKDIR /home/soleluna/solitare-simple-app
COPY . /home/soleluna/solitare-simple-app

# This is the second and final image; it copies the compiled binary
# over but starts from the base python:3.6 image.
FROM python:3.6 AS runtime-image

COPY --from=compile-image /home/soleluna .

EXPOSE 5000
CMD ["python", "app.py"]
