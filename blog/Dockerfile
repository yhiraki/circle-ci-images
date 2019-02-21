from yhiraki/emacs-minimal:26.1 as emacsimage

from yhiraki/circleci:ubuntu1804

env HUGO_VERSION=0.53

run apt-get update \
  && apt-get install -y wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

run wget -qO- https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar xz \
  && mv hugo /usr/local/bin

run wget -qO- 'https://cli.netlify.com/download/latest/linux' | tar xz \
  && mv netlifyctl /usr/local/bin

copy --from=emacsimage /usr/local /usr/local
copy ./init.el /init.el

run emacs --batch -l /init.el
