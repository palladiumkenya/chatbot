FROM  python:3.9.16
WORKDIR app/
ADD . /app
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirementsMain.txt
RUN python -m nltk.downloader punkt
EXPOSE 8888

CMD ["python", "app.py"]