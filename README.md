# docker-vpn-basic
Configuration Openvpn with docker easy to install


## References
[Open VPN for Docker](https://github.com/kylemanna/docker-openvpn/)

## Requirements
- Docker
- Docker-compose
- make

## Installation

Clone repository
```sh
	$ git clone https://github.com/willsonart7/docker-vpn-basic.git openvpn
```

Enter project

```sh
	$ cd openvpn
```

Build dependencies and install configuration files

```sh
	$ make config 
```
This configuration generate folder `volumen-data` on root the project and create a file `docker.env`

## Run server

```sh
	$ make run
```

The server run with docker and expose port `1194` for default

## Usage

### Generate client and file .ovpn

```sh
	$ make generate-file
```
This command create a client and register in file `users.csv` next generate a file `.ovpn` for client in folder `user_files/` with the username

### Generate client only

```sh
	$ make generate-client-only
```

`Note`: The client is registered in file `users.csv` but requere the file `.ovpn` created

### Generate file only

```sh
	$ make generate-file-only
```

`Note` : The file `.ovpn` is generated in folder `user_files/` with the username but requere the client preview created

