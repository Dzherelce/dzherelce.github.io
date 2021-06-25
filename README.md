# dzerelce.github.io
Сторінка школи

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
