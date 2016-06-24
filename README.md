## ngIRCd

Next Generation IRC Daemon

## ngIRCd Docker Images

This image is based on Alpine Linux.

### Usage

Example:

    docker run -d --name ngircd geekduck/ngircd


If you want to change server name:

    docker run -d --name ngircd geekduck/ngircd --server-name irc.example.co.jp


If you want to overwrite config files:

    docker run -d --name ngircd \
      -v <PATH_TO_CONFIG_FILE>/ngircd.conf:/etc/ngircd/ngircd.conf:ro \
      -v <PATH_TO_CONFIG_FILE>/ngircd.motd:/etc/ngircd/ngircd.motd:ro \
      geekduck/ngircd
