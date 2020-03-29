#!/bin/sh

echo "Setting conf"

if [[ -f /etc/privoxy/config ]]
then
  size=$(stat -c "%s" /etc/privoxy/config)

  if [ "${size}" == "0" ]
  then
    echo "Init config with default values"
    cat /etc/privoxy/config.example > /etc/privoxy/config
  else
    echo "Use existed config"
  fi
else
  echo "Create config with default values"

  cat /etc/privoxy/config.example > /etc/privoxy/config
fi

if [ $PORT ];
then
  sed -i "s/listen\-address  127\.0\.0\.1:8118/listen\-address  0\.0\.0\.0:$PORT/" /etc/privoxy/config
else
  sed -i "s/listen\-address  127\.0\.0\.1:8118/listen\-address  0\.0\.0\.0:8118/" /etc/privoxy/config
fi

if [ $SOCKS5IP ];
then
  if [ $SOCKS5PORT ];
  then
    echo "forward-socks5t   / "$SOCKS5IP":"$SOCKS5PORT" ." >> /etc/privoxy/config
  fi
fi

if [ $I2PIP ];
then
  if [ $I2PPORT ];
  then
    echo "forward  .i2p "$I2PIP":"$I2PPORT >> /etc/privoxy/config
  fi
fi

exec "$@"
