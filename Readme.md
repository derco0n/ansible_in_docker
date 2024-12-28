# Readme
This is an ansible-instance in a docker-container.

# Build
Build it like

## For ARM64 (e.g Raspberry Pi)

```
docker build -t ansible:ubuntu-latest-arm64 --build-arg ARCH=arm64v8/ .
```

## For AMD64 (x86_64)

```
docker build -t ansible:ubuntu-latest-amd64 --build-arg ARCH=amd64/ .
```

# Usage
Use it as follows. 

*Note that you'll have to map your inventory (hosts-file) and optionally your playbooks.* <br />
*Also note, that you'll have to adapt the image ID according to your image*

```
# Find your image ID
docker image ls | grep ansible

# Execute commands within the image.
docker run -v /path/to/your/ansible-inventory/hosts:/etc/ansible/hosts <IMAGEID> ansible all -m ping
```
Or use it interactively:
```
docker run -it <IMAGEID>
```

