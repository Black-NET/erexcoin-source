ErexCoin Core integration/staging tree
=====================================

https://erex.io/


ErexCoin Specifications
----------------

Coin Name: Erexcoin

Ticker : EREX

Algorithm : SHA-256

Blocktime : 5 minutes

Block Reward : 50 EREX

Total supply : 100.000.000

Premine : 10%


Mining pool
----------------
https://0769.it

https://miner-world.com/

https://eurohash.eu/

https://icopool.club

https://gpuhot.com/

Explorer
----------------
https://explorer.erex.io/


Exchange
----------------
BTC : https://erex.io/exchange/EREX/BTC/

DOGE : https://erex.io/exchange/EREX/DOGE/

What is ErexCoin ?
----------------

Erexcoin is the cryptocurrency of EREX a cryptocurrency exchange platform offering a simplified interface to allow everyone to discover trading. Erex offers faucet, dice, ico, lottery, investments, refferals.

Erex Exchange is improving, we work every day to simplify and improve the interface for our users.

Erexcoin is a major tool in the exchange platform, it allows us to interact with other cryptocurrencies and to offer advantageous services.

Among the active services are all EREX currencies are exchangeable with Erexcoin, to list on EREX the payment of fees that allow us to finance the hosting is in Erexcoin.

We are preparing a lot for Erexcoin in order to satisfy our investors, those who trust us. Among these next announcements is a profit sharing up to 10% of the exchange fees collected by the platform returned fairly to investors in Erexcoin. Of course, a report page will be available to see the payments made and the fees collected. Several more Erexcoin profits are to come.

Erexcoin is also the DNA of EREX all our external projects are made thanks to Erexcoin, planning to list Erexcoin with many partners.

If you have any suggestions or comments, we remain at your disposal on twiiter @EREXio or on contact@erex.io

License
-------

Bitcoin Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built (see `doc/build-*.md` for instructions) and tested, but it is not guaranteed to be
completely stable. [Tags](https://github.com/bitcoin/bitcoin/tags) are created
regularly from release branches to indicate new official, stable release versions of Bitcoin Core.

The https://github.com/bitcoin-core/gui repository is used exclusively for the
development of the GUI. Its master branch is identical in all monotree
repositories. Release branches and tags do not exist, so please do not fork
that repository unless it is for development reasons.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md)
and useful hints for developers can be found in [doc/developer-notes.md](doc/developer-notes.md).

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and macOS, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

Translations
------------

Changes to translations as well as new translations can be submitted to
[Bitcoin Core's Transifex page](https://www.transifex.com/bitcoin/bitcoin/).

Translations are periodically pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next
pull from Transifex would automatically overwrite them again.

Translators should also subscribe to the [mailing list](https://groups.google.com/forum/#!forum/bitcoin-translators).
