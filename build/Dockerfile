FROM hyperledger/iroha:latest
RUN apt-get update && apt-get install -y git
RUN cd /home && git clone -b master https://github.com/hyperledger/iroha --depth=1 && cd ./iroha && cp -pR ./example/* /opt/iroha_data