**What is RAVEN?**
------------

**Raven** is a simple package manager for **[GNU/Linux](https://en.wikipedia.org/wiki/GNU/Linux)**.

----------

**INSTALLATION:**
------------

    git clone https://github.com/learzej/raven.git
    cd raven
    make install

**USAGE:**
------------------------

**Install a package:**

	raven -I name-version.rvn
	raven --install name-version.rvn

**Uninstall a package:**

	raven -R name-version
	raven --remove name-version

**List all installed packages:**

	raven -L
	raven --list

**Show help:**

	raven -H
	raven --help

**Show raven version installed:**

	raven -V
	raven --version

**OPTIONAL ARGUMENTS:**
----------------------

**No show output compilation:**

	raven -q
	raven --quiet
	example: raven --quiet --install name-version.rvn

**Run tests after compile a package:**

	raven -c
	raven --check

**Clean after install a package:**

	raven -c
	raven --clean

**Reinstall a package:**

	raven -e
	raven --reinstall
	example: raven --reinstall --install name-version.rvn


**CREATION OF A PACKAGE:**
----------------------

**TEMPLATE:**

	#!/bin/bash

	NAME=''
	VERSION=1.0
	FILES=('')
	MD5SUMS=('')
	DEPENDS=('')
	LICENSE=''

	PREPARE()
	{
	  :
	}

	BUILD()
	{
	  :
	}

	CHECK()
	{
	  :
	}

	MERGE()
	{
	  :
	}
