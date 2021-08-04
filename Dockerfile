FROM registry.access.redhat.com/ubi8/python-39

WORKDIR /usr/src/app
COPY Pipfile* /usr/src/app/

RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

COPY . /usr/src/app/
CMD ["flask", "run", "--host=0.0.0.0"]
