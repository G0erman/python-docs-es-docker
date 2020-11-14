Run python-docs-es environment via docker.

Use Case
--------

* Fix powrap files to pass travis CI validation over Windows.

Windows Requirements
--------------------

* Install docker with WSL 2


Characteristics
---------------

* Mount volume local Windows folder "C:\\\\your.path\\\\python-docs-es"


Run
---

```bash
# Create and run a container in iterative mode with a windows volume attached
> docker run -it -v C:\\your.path\\python-docs-es:/user/home/python-docs-es gedarafi/python-docs-es bash
  
# Fix po file
$ powrap library/sqlite3.po
```
