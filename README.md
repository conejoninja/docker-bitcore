Docker container for [bitcore-node](http://github.com/bitpay/bitcore-node), includes bitcoind and a bootstrap script for a fast start.


### Usage

To run it:

    $ docker run -d -v /path/to/data/:/root/.bitcoin --name bitcore -p 80:80 conejo/bitcore


### Notes

* This runs on port 80.
* You could place a bitcoin.conf (bitcoind configuration file) and a docker.yml (bitcore configuration file) under /path/to/data if you want to customize it.


### Warning

This is my first Docker container. I wouldn't use it for anything serious or important.


## Contributing to Docker-bitcore:

If you find any improvement or issue you want to fix, feel free to send me a pull request with testing.

Feel free to donate some bits : 154pATARwRgncvP6mgA58J2RQ4avYKpLyR