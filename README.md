Octopress Vagrant files
---

Download/Clone this repository, and put the files inside your source repository. From there, you should be able to run a vagrant up, and you should have everything necessary to create posts, and publish your blog. You may need to create an ssh key for your vagrant user, and add it to github.

You can also install this using composer.

1. First, make sure you have a `composer.json` file, with the following in it

```
    "config": {
        "bin-dir": "bin"
    }
```

2. Then, you can require the package

```sh
composer require "aequasi/octopress-vagrant" dev-master
```

3. From there, you can just type `./bin/vagrant-init`, and it will symlink the files you need to run `vagrant`
