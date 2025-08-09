# dzerelce.github.io
Сторінка школи


# MOVED

Сторінка школи Джерельце перенесена на Google Sites за адресою https://sites.google.com/kraiany.org/dzherelce - через HTTP redirect в файлі index.html
Підсторінки (фото, відео) доступні за адресою https://dzherelce.github.io/<назва репозиторію>

```
year2010_11/
year2013_14/
year2014_15/
year2015_16/
year2016_17/
year2017_18/
year2018_19/
```
Даний репозиторій архівується.


## Setup

- Install Ruby
- Clone git repository

    git clone -b source git@github.com:Dzherelce/dzherelce.github.io.git

- Install gems

    cd dzherelce.github.io
    bundle install

-

## Publishing

    rake publish

## Setting the repository

```

git clone git@github.com:Dzherelce/dzherelce.github.io.git
mkdir build
git clone git@github.com:Dzherelce/dzherelce.github.io.git build
cd build
gco master

```

## Development with docker

### View
  docker run -it  --rm -v $(pwd):/app -p 4567:4567 dzerelce

### Build

  docker run -it  --rm -v $(pwd):/app -p 4567:4567 dzerelce build
