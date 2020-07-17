from yhiraki/emacs-minimal:26.1 as emacsimage

from yhiraki/circleci:ubuntu1804

env HUGO_VERSION=0.73.0 \
  DEBIAN_FRONTEND=noninteractive

run apt-get update \
  && apt-get install -y \
  git wget tzdata \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

run ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && dpkg-reconfigure -f noninteractive tzdata

run wget -qO- https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar xz \
  && mv hugo /usr/local/bin

run wget -qO- 'https://cli.netlify.com/download/latest/linux' | tar xz \
  && mv netlifyctl /usr/local/bin

run git clone -b master --depth 1 --single-branch https://github.com/kaushalmodi/ox-hugo

copy --from=emacsimage /usr/local /usr/local
