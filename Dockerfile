FROM rust:slim-buster AS build
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN cargo build --release

FROM debian:buster-slim
RUN apt-get upgrade  && rm -rf /var/lib/apt/lists/*
ADD ./html /html
COPY --from=build /usr/src/app/target/release/devops101-course /usr/local/bin/app
ENTRYPOINT [ "app" ]
EXPOSE 8080

