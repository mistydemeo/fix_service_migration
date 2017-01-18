Fix MySQL 5.6 after the Homebrew migration
==========================================

![Shadow the Hedgehog taunting Sonic (yes, really)](https://i.ytimg.com/vi/433jTl_rZB8/hqdefault.jpg)

Having trouble running MySQL after a `brew update`?

Homebrew recently migrated the versioned MySQL packages into the core repository, and updated the package names at the same time. Unfortunately, you might end up with leftovers from the old package after this, and OS X may end up trying to run both versions of MySQL at the same time. This script cleans up the cruft from the old version, then restarts the `mysql@5.6` package for you.

To run, just clone this repo and run `./fix_mysql56.sh`.

Still having trouble? [Open an issue!](https://github.com/mistydemeo/fix_service_migration/issues)
