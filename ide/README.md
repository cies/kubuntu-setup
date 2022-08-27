# IDEs

I'm on the IntelliJ camp. Since I likely have more than one JetBrains IDE installed, I manage them with [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app), installed with:

```bash
cd /usr/local/bin
wget -cO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar -xzf jetbrains-toolbox.tar.gz
DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
mv $DIR/jetbrains-toolbox .
rmdir $DIR
```

**NOTE**: The `/usr/local/bin` path should be writable for the user as per instruction in the top level README.

Now run it and click the settings icon (gear shape in the top-right) to:

* set the location on disk (I rather not have 3rd party binaries in my home dir)
* improve privacy by not allowing data sharing

And install you IDE of choice. I do *IntellJ IDEA Community Edition*.

