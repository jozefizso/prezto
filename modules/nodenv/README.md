Node.js with nodenv version manager
=======

Loads the [nodenv][1] version manager for node and npm.
Enables also [npm][3] completion.

nodenv
---

[nodenv][1] allows management of multiple isolated Node.js installations in the home directory.

### nodenv installation

To install **nodenv** you must clone it from GitHub repository:

```
git clone https://github.com/wfarr/nodenv.git ~/.nodenv
cd ~/.nodenv
git checkout v0.3.3
```

You can use `nodenv install` command to install desired Node.js version. You can use the `--source` parameter to compile Node.js instead of downloading prebuilt package.

Use the `nodenv global` command to set version of Node.js you want to use.

```
nodenv install v0.10.15 --source
nodenv global v0.10.15
```


[1]: https://github.com/wfarr/nodenv
[2]: http://nodejs.org
[3]: http://npmjs.org

