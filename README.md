Riemann Redis
=============

Simple redis riemann client.

Submits the result of INFO [section] and SLOWLOG query into riemann.

Supports multiple sections by performing multiple INFO queries.

Local installation
==========

```
rake package
gem install --local pkg/riemann-redis-0.2.2.gem 
```

Get started
==========

``` bash
gem install riemann-redis
riemann-redis --help
riemann-redis-slowlog --help
riemann-redis-dynomite --help
```

Multiple --redis-sections can by specified, for example if you want to monitor both Memory and Replication

``` bash
riemann-redis --redis-section "Replication" --redis-section "Memory"
```

Dynomite extension
===========

Submits the length of matching collections in Redis into riemann.

``` bash
riemann-redis-dynomite 
```