# docker-venus

Planet Venus running under docker container.

## Usage

TBD

## Directories

* **data**: Main place for `planet.ini` config, templates, 
generated planet `output`.

* **themes**: theme customizations from `planet-venus` original package 
which may be used in `data/theme` folder.

## Known limitattions

`planet-venus` seems to be somewhat broken nowadays, so it won't work on 
upstream debian/ubuntu. So `docker-venus` runs in ubuntu:12.04 container.

## TODO

- Fix dat `planet-venus`, so it will work with upstream debian/ubuntu (docker `ubuntu:latest` for ex)
- Multi-planet generation

## Authors

- Fedor Sumkin (qosys.net@gmail.com)