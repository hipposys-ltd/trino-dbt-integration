FROM python:3.10

RUN pip install dbt-core==1.8
RUN pip install dbt-postgres==1.8

COPY dbt .

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]