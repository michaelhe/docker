FROM michaelhi/python3

RUN apk add python3-dev linux-headers libc-dev gcc libffi-dev openssl-dev

COPY flask_requirements.txt /tmp/

RUN pip install -r /tmp/flask_requirements.txt
