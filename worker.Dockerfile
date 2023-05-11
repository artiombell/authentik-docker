FROM --platform=linux/amd64 beryju/authentik:2023.4.1

WORKDIR /

RUN ls

COPY ./server.py /server.py
COPY ./run_script.sh /run_script.sh

ENV PATH "/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/lifecycle:/"

ENTRYPOINT [ "bash", "run_script.sh" ]