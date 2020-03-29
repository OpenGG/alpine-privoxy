### Alpine Privoxy

[![](https://images.microbadger.com/badges/version/opengg/privoxy.svg)](https://microbadger.com/images/opengg/privoxy "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/opengg/privoxy.svg)](https://microbadger.com/images/opengg/privoxy "Get your own image badge on microbadger.com")

[![Docker Pulls](https://img.shields.io/docker/pulls/opengg/privoxy.svg)](https://hub.docker.com/r/opengg/privoxy/ "Docker Pulls")
[![Docker Stars](https://img.shields.io/docker/stars/opengg/privoxy.svg)](https://hub.docker.com/r/opengg/privoxy/ "Docker Stars")
[![Docker Automated](https://img.shields.io/docker/automated/opengg/privoxy.svg)](https://hub.docker.com/r/opengg/privoxy/ "Docker Automated")

Minimal docker image for privoxy.

## Usage

Environment Variables (Optional)
PORT        - the port of http proxy server
SOCKS5IP    - the ip of the socks5 server (tor)
SOCKS5PORT  - the port of the socks5 server (tor)
I2PIP       - the ip of the i2p proxy
I2PPORT     - the port of the i2p proxy

Privoxy listens to 8118

Sample command
```bash
# default listen port 8118
docker run -d -p 8118:8118 -e SOCKS5IP=10.5.0.5 -e SOCKS5PORT=9050 -e I2PIP=10.5.0.5  -e I2PPORT=4444 opengg/privoxy

# custom listen port
docker run -d -p 8228:8228 -e PORT=8228 -e SOCKS5IP=10.5.0.5 -e SOCKS5PORT=9050 -e I2PIP=10.5.0.5  -e I2PPORT=4444 opengg/privoxy
```
