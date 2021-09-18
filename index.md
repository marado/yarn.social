---
title: Yarn.social
keywords: yarn, social media, twtxt, decentralised, privacy first
---

# Yarn.social

<img align="left" width="100" height="100" src="/logo.png" style="padding-right: 5pt" />

[Yarn.social](https://yarn.social) is a decentralised self-hosted social media
that has a privacy-first focus.

There are no ads, no tracking and no personal information is ever collected or stored.

Read more [About Yarn.social](/about.html) and our [Manifesto](/manifesto.html)

## Getting Started

### Run a Pod

If you have [Docker](https://www.docker.com) installed and available to run
containers you can run a `yarnd` instance by simply running:

```#!sh
$ docker run -p 8000:8000 prologic/yarnd
```

Otherwise it is recommended to clone the source code and build `yarnd`
from source. Be sure to have [Go](https://golang.org) installed.

```#!sh
$ https://git.mills.io/yarnsocial/yarn
$ cd yarn
$ go build ./cmd/yarnd/...
$ go install  ./cmd/yarnd/...
```

Now run your instance by running:

```#!sh
yarnd
```

For options see `yarnd --help`.

### Manually

Since Yarn.social is built upon the [Twtxt](https://twtxt.readthedocs.org) with
a few [small extensions](https://dev.twtxt.net) all you need to join the network
and participate in the growing numbers of users and conversations is:

- A `twtxt.txt` file hosted somewhere
- A `avatar.png` hosted next to your `twtxt.txt`
- A [twtxt](https://twtxt.readthedocs.org) client

### Hosting

> Coming soon™

## Sources

The project is managed by a self-hsoted [Gita](https://gitea.io) instance by
over at https://git.mills.io/yarnsocial

- [yarn](https://git.mills.io/yarnsocial/yarn)
  The `yarnd` self-hosted Yarn.social Pod server itself
  as well as the `yarnc` command-line client for posting
  and interacting with your pod's API.
- [yarns](https://git.mills.io/yarnsocial/yarns)
  The Yarn.social search engine that crawls the network of
  pods and twtxt feeds, scrapesa and indexed every post (yarns).
- [rss2twtxt](https://git.mills.io/yarnsocial/rss2twtxt)
  📜 an RSS/Atom and Twitter feed aggregator that consumes RSS/Atom and Twitter™
  feeds and produces twtxt feeds for consumption by Yarn.social pods as well as
  twtxt clients in general.
- [Goryon](https://git.mills.io/yarnsocial/goryon)
  🐦 A Flutter iOS and Android App for the Yarn.social backend API
  (`yarnd`)` to provide a native mobile experience for users. Goryon connects
  to any valid Yarn.social pod such a [twtxt.net](https://twtxt.net).

## Contributing

If you would like to help the project and contribute ideas, bugfixes,
improvements, etc, we're always looking for new contributirs and we still
have loads of things to do!

Please reach out to [@prologic](https://twtxt.net/user/prologic) or join our
Gitea instance at https://git.mills.io/ and start filing issues and pull requests
to the main project https://git.mills.io/yarnsocial/yarn

## Licenses

Most of the software components here are licensed under the terms of the
[MIT License](https://opensource.org/licenses/MIT) with the exception of the
hosting platform.
