# SSH Tunnel

This SSH Tunnel provides a simplistic way to set up an SSH tunnel to a remote
host to securely connect without having to expose your host too much.

## Usage

### Private key file

The container assumes your private key doesn't have a password and is mounted
under `/private-ssh-key`.

### Configuration

- `$PORT` the port you want to forward
- `$USERNAME` the username for your ssh key
- `$REMOTE_HOST` the remote host you want to set up a local tunnel for
- `$BIND_ADDRESS` the address you want to bind the tunnel to. (default: `127.0.0.1`)

### Running the tunnel

```
$ docker run --rm -p "9200:9200" \
    -v $(pwd)/private-key:/private-ssh-key \
    -e PORT=9200 \
    -e USERNAME=elasticsearch \
    -e REMOTE_HOST=my-es-host \
    jelmersnoeck/ssh-tunnel
```
