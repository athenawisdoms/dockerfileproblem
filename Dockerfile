FROM alpine:latest

WORKDIR /root
ENV PATH /root/bin:$PATH

COPY terrad ./bin/

COPY ./config/ /terra/.terra/config/

CMD /bin/sh -c terrad init localterra --chain-id rebirth-1


# $ docker build -t foo .
#
# Sending build context to Docker daemon  48.11MB
# Step 1/6 : FROM alpine:latest
#  ---> 0ac33e5f5afa
# Step 2/6 : WORKDIR /root
#  ---> Using cache
#  ---> bc5a1a6edca7
# Step 3/6 : ENV PATH /root/bin:$PATH
#  ---> Using cache
#  ---> b928aa57fcc9
# Step 4/6 : COPY terrad ./bin/
#  ---> Using cache
#  ---> bb2206406648
# Step 5/6 : COPY ./config/ /terra/.terra/config/
#  ---> Using cache
#  ---> b58fb9864217
# Step 6/6 : CMD /bin/sh -c terrad init localterra --chain-id rebirth-1
#  ---> Using cache
#  ---> 4075ba0be511
# Successfully built 4075ba0be511
# Successfully tagged foo:latest


# $ docker run foo
# init: line 1: terrad: not found
