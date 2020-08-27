# isolated wps

'isolated-wps', emmm... as it's name, it was isolated. 

So, no other unstable factors will effect running of wps.

The key of isolated-wps is docker. And i used docker to encapsulate the graphic program.

---

最近在manjaro系统上运行wps excel的时候遇到一些问题，导致程序一直segment fault错误。

主要是我已经用了一年了，最近忽然崩了，觉得好不爽！

我觉得像这些程序，就应该保持无状态的！每次启动的时候就应该跟第一次打开使用它是一样的才对！

所以我打算把wps隔离起来使用！但是我不是很喜欢docker的UFS机制，它太冗余了，而且我只是想隔离进程。

而且，我并不想完全隔离文件系统，只是隔离运行期环境。不过现在就暂且使用docker吧！

## build

`./build.sh`

## run

`./wps.sh`