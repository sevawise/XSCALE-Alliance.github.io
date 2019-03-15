This is the website for the XSCALE Alliance

The site is deployed to the `master` branch and is hosted on Github pages.

You can make changes on the `source` branch.

## Developing

The site is built using [Middleman], so you need [Ruby] on your system.
Clone the repository and check out the `source` branch. 
From the root of the repository:

```
make setup
make test
```

This will install all the required dependencies and build the site.

To run the site and start developmnent:

```
make server
```

The site will be available at http://localhost:4567.
See [Middleman development cycle] to get started.

## Contributing

Please share your contributions by sending pull requests against the `source` branch.

Sharing is caring!

---

  [Middleman]: https://middlemanapp.com/
  [Middleman development cycle]: https://middlemanapp.com/basics/development-cycle/
  [Ruby]: https://www.ruby-lang.org/en/documentation/installation/