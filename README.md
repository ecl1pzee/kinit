<p align="center">
  <img src="kinit logo.png" width="400" alt="kinit logo" />
</p>
<p align="center">
  <em>The best init system for Linux you've ever seen.</em><br>
  TOML • services • easy to use • user friendly • intuitive • welcoming
</p>

<p align="center">
  <img src="https://img.shields.io/badge/C-121212?style=for-the-badge&logo=c&logoColor=white" />
  <img src="https://img.shields.io/badge/Zig-121212?style=for-the-badge&logo=zig&logoColor=white" />
  <img src="https://img.shields.io/badge/Made%20with-Opsec-black?style=for-the-badge&logo=adafruit" alt="Badge">
</p>

# What's this?
In short terms, **kinit** is the PID1 of Linux systems, a.k.a an init system.

An init system is the first program, other than the kernel, to be run after Linux is booted.

# Features
- TOML services
- user friendly
- SystemD-like control interface (enable, disable, start,stop etc)
- a goated logo by australis

# Philosophy
More is less, and if something does not work how the user expects it, it is not working for the user, but rather, against the user.

We also follow OStree philosophy. I just love it.

# Why?
Create a simple and intuitive init system, that allows easy initalization at the cost of zero bloat, with a highly debuggable interface!

License
=======
kinit uses the 2-Clause BSD License. More info about it at: https://opensource.org/license/bsd-2-clause

# Verifying releases

> [!NOTICE]
> kinit releases are signed with these keys, for both the core repository
> and the package manager, from now on.

aurelius (kinit maintainer)
--------------------------
    Fingerprint: 79E7 72B2 0F99 B152 1BBB 49C6 5BF7 4E3E D886 8135 

    Fetch via:
    gpg --keyserver keys.openpgp.org --recv-keys 79E772B20F99B1521BBB49C65BF74E3ED8868135

    Or view directly:
    https://keys.openpgp.org/search?q=79E772B20F99B1521BBB49C65BF74E3ED8868135

eclipse_dev (kinit maintainer)
--------------------------------
    Fingerprint: D9F7 0FAA AD6F A15D 6BC3 C755 9B4F B4E0 8086 1302

    Fetch via:
    gpg --keyserver keys.openpgp.org --recv-keys D9F70FAAAD6FA15D6BC3C7559B4FB4E080861302

    Or view directly:
    https://keys.openpgp.org/search?q=D9F70FAAAD6FA15D6BC3C7559B4FB4E080861302

A release signed by either key should be considered valid. If you
notice a release signed by a key not listed here, treat it as
untrusted and please open an issue, although this shan't happen.

Documentation
=============
Hosted on https://kinit-docs.bitetheapple.org, thanks to thatpicoder!

Special thanks
===
thatpicoder

Check out our other projects!
====
###  <p align="middle"><em>maintained by <a href="https://github.com/aureliusxyz">aurelius</a></em> and <a href=""><em>australis</em></a>
### [automl](https://github.com/aureliusxyz/automl)
*A small, portable TOML-ish parser library with zero deps, dotted sections, nested arrays, pretty diagnostics.* (used by kinit!)

### [xpk](https://github.com/ecl1pzee/xpk)
*A lightweight package manager that follows OStree philosophy and tries to keep it simple.*
