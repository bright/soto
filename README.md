Soto
----

Soto connects to TeamCity REST API and extracts commit version for last successful TeamCity build.

We developed it to help us generate release notes based on the git commits since the last successful build.

## Installation

```
$ gem install soto
```

## Usage

```
$ soto read -u USERNAME  -p PASSWORD -c TEAMCITY_URL -b BUILD_CONFIGURATION
```

will output the commit version for last successful build


## License
Soto is released under an MIT license.
