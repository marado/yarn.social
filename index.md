---
title: Yarn.social - The decentralized social micro-blogging platform that actually respects your privacy
keywords: yarn, social media, twtxt, decentralized, privacy first
---

# Yarn.social

<img align="left" width="100" height="100" src="/logo.png" style="padding-right: 5pt" />

[Yarn.social](https://yarn.social) is a decentralized self-hosted social media
that has a privacy-first focus.

There are no ads, no tracking and no personal information is ever collected or stored.

Read more [About Yarn.social](/about.html)

## Getting Started

### ๐ค Join an existing Pod

You are welcome to join one of the existing pods listed here:

- [twtxt.net](https://twtxt.net) The first Yarn.social pod launched 20 July 2020
  Hosted in AU by [@prologic](https://prologic.shortcircuit.net.au)
- [twt.nfld.uk](https://twt.nfld.uk) A Yarn.social pod
  Hosted in the UK by [@jlj](https://twt.nfld.uk/user/jlj/)
- [we.loveprivacy.club](https://we.loveprivacy.club) A Yarn.social pod
  Hosted in AU by [@eldersnake](https://we.loveprivacy.club/user/eldersnake)

### ๐ฑ Mobile App

There is a native Mobile App for Yarn.social pods available called "Goryton for Twt"
available on both Apple App and Google Play stores.

See [Goryon](/goryon) for details

### ๐งถ Run a Pod

If you have [Docker](https://www.docker.com) installed and available to run
containers you can run a `yarnd` instance by simply running:

```#!sh
$ docker run -p 8000:8000 prologic/yarnd
```

Otherwise it is recommended to clone the source code and build `yarnd`
from source. Be sure to have [Go](https://golang.org) installed.

```#!sh
$ git clone https://git.mills.io/yarnsocial/yarn
$ cd yarn
$ make deps
$ make
```

Now run your instance by running:

```#!sh
yarnd
```

For options see `yarnd --help`.

### ๐ช Manually

Since Yarn.social is built upon the [Twtxt](https://twtxt.readthedocs.org) spec
with a few [small extensions](https://dev.twtxt.net), all you need to do to
join the network and participate in the growing number of users and
conversations is have:

- A `twtxt.txt` file hosted somewhere
- A `avatar.png` hosted next to your `twtxt.txt`
- A [twtxt](https://twtxt.readthedocs.org) client such as:
    - [jenny](https://uninformativ.de/git/jenny): A console twtxt client
      with [mutt](http://www.mutt.org) integration
      ([tutorial](https://www.uninformativ.de/blog/postings/2021-09-19/0/POSTING-en.html))

### ๐ Hosting

> Coming soonโข

## Services

The following supporting services help to support the Yarn.social platform and
are provided for the benefit of all users:

- [search.twtxt.net](https://search.twtxt.net)
  This is an instance of the [Yarns](//git.mills.io/yarnsocial/yarn)
  search engine and crawls and indexes Yarn.social pods and Twtxt feeds.
- [feeds.twtxt.net](https://feeds.twtxt.net)
  This is an instance of [rss2twtxt](//git.mills.io/yarnsocial/rss2twtxt)
  and is used as the primary "feed source" for all Yarn.social pods (by default)
  and supports RSS/Atom and Twitterโข. This allows users to "subscribe" to and
  "follow" websites, blogs or Twitterโข accounts.

## ๐พ Sources

The project is managed by a self-hosted [Gitea](https://gitea.io) instance
at https://git.mills.io/yarnsocial

- [yarn](https://git.mills.io/yarnsocial/yarn)
  ๐ The `yarnd` self-hosted Yarn.social Pod server itself
  as well as the `yarnc` command-line client for posting
  and interacting with the pod's API.
- [yarns](https://git.mills.io/yarnsocial/yarns)
  ๐ The Yarn.social search engine that crawls the network of
  pods and twtxt feeds, scrapes and indexes every post.
- [rss2twtxt](https://git.mills.io/yarnsocial/rss2twtxt)
  ๐ an RSS/Atom and Twitter feed aggregator that consumes RSS/Atom and Twitterโข
  feeds and produces twtxt feeds for consumption by Yarn.social pods as well as
  twtxt clients in general.
- [Goryon](https://git.mills.io/yarnsocial/goryon)
  ๐ฆ A Flutter iOS and Android App for the Yarn.social `yarnd` API
  to provide a native mobile experience for users.

## Contributing

If you would like to help the project and contribute ideas, bug-fixes,
improvements, etc, we're always looking for new contributors and we still
have loads of things to do!

Please reach out to [@prologic](https://twtxt.net/user/prologic) or join our
Gitea instance at https://git.mills.io/ and start filing issues and pull requests
to the main project https://git.mills.io/yarnsocial/yarn

## Collaboration

We have an IRC channel `#yarn.social` on the [Libera.Chat](https://libera.chat/)
IRC network. You are welcome to come chat to us and hang out.

## Privacy and Abuse Policy

Yarn.social is a decentralised social media platform that supports
micro-blogging (Twts) and full blogging. Pods (or individual instances) are
owned and operators by "Pod Owners" or "Pod Operators". Pods can either be
configured as single-user or multi-user (the default).

As such all Yarn.social pods share the following defaults Abuse and Privacy policies:

- [Default Abuse Policy (Community Guidelines)](/abuse.html)
- [Privacy Policy](/privacy.html)

__Note:__ The privacy policy applies to **ALL** Yarn.social pods as the software
`yarnd` **DOES NOT** collect any personally identifable information from users
(PII), or any metadata or analytics of any kind nor does it send, sell or
transfer any data from pods to any 3rd-parties.

## Licenses

Most of the software components here are licensed under the terms of the
[MIT License](https://opensource.org/licenses/MIT) with the exception of the
hosting platform.
