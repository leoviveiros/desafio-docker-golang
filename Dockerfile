FROM scratch

COPY ./desafio-docker-golang .

ENTRYPOINT [ "./desafio-docker-golang" ]