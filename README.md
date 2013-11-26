# Clojure Android App Practice

## My Notes

Modify `$HOME/.lein/profiles.clj` by adding `[lein-droid/lein-droid "0.2.0"]` into `{:user {:plugins [ __here__ ]}}`.

```sh
lein droid doall
```

`doall` is same to `compile` and `deployment`.

`deployment` is same to `install`, `run` and `forward-port`.

### SDK Version under 11

Modifying `:target-version 17` to `:target-version 10` in `project.clj` and `minSdkVersion="11"` to `minSdkVersion="10" in `AndroidManifest.xml`, it makes build to fail. Error log is below.

```textile
...
Compiling neko.doc
Exception in thread "main" java.lang.ExceptionInInitializerError
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:270)
        at clojure.lang.RT.loadClassForName(RT.java:2145)
        at clojure.lang.RT.load(RT.java:455)
        at clojure.lang.RT.load(RT.java:436)
        at clojure.core$load$fn__5018.invoke(core.clj:5530)
        at clojure.core$load.doInvoke(core.clj:5529)
        at clojure.lang.RestFn.invoke(RestFn.java:408)
        at clojure.core$load_one.invoke(core.clj:5336)
        at clojure.core$load_lib$fn__4967.invoke(core.clj:5375)
        at clojure.core$load_lib.doInvoke(core.clj:5374)
        at clojure.lang.RestFn.applyTo(RestFn.java:142)
        at clojure.core$apply.invoke(core.clj:619)
        at clojure.core$load_libs.doInvoke(core.clj:5413)
        at clojure.lang.RestFn.applyTo(RestFn.java:137)
        at clojure.core$apply.invoke(core.clj:619)
        at clojure.core$require.doInvoke(core.clj:5496)
        at clojure.lang.RestFn.invoke(RestFn.java:482)
        at neko.ui.traits$loading__4910__auto__.invoke(traits.clj:12)
        at neko.ui.traits__init.load(Unknown Source)
        at neko.ui.traits__init.<clinit>(Unknown Source)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:270)
        at clojure.lang.RT.loadClassForName(RT.java:2145)
        at clojure.lang.RT.load(RT.java:455)
        at clojure.lang.RT.load(RT.java:436)
        at clojure.core$load$fn__5018.invoke(core.clj:5530)
        at clojure.core$load.doInvoke(core.clj:5529)
        at clojure.lang.RestFn.invoke(RestFn.java:408)
        at clojure.core$load_one.invoke(core.clj:5336)
        at clojure.core$load_lib$fn__4967.invoke(core.clj:5375)
        at clojure.core$load_lib.doInvoke(core.clj:5374)
        at clojure.lang.RestFn.applyTo(RestFn.java:142)
        at clojure.core$apply.invoke(core.clj:619)
        at clojure.core$load_libs.doInvoke(core.clj:5413)
        at clojure.lang.RestFn.applyTo(RestFn.java:137)
        at clojure.core$apply.invoke(core.clj:619)
        at clojure.core$require.doInvoke(core.clj:5496)
        at clojure.lang.RestFn.invoke(RestFn.java:421)
        at neko.doc$loading__4910__auto__.invoke(doc.clj:12)
        at neko.doc__init.load(Unknown Source)
        at neko.doc__init.<clinit>(Unknown Source)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:270)
        at clojure.lang.RT.loadClassForName(RT.java:2145)
        at clojure.lang.RT.load(RT.java:455)
        at clojure.lang.RT.load(RT.java:436)
        at clojure.core$load$fn__5018.invoke(core.clj:5530)
        at clojure.core$load.doInvoke(core.clj:5529)
        at clojure.lang.RestFn.invoke(RestFn.java:408)
        at clojure.core$load_one.invoke(core.clj:5336)
        at clojure.core$compile$fn__5023.invoke(core.clj:5541)
        at clojure.core$compile.invoke(core.clj:5540)
        at user$eval7.invoke(form-init3540956360210516347.clj:1)
        at clojure.lang.Compiler.eval(Compiler.java:6619)
        at clojure.lang.Compiler.eval(Compiler.java:6609)
        at clojure.lang.Compiler.load(Compiler.java:7064)
        at clojure.lang.Compiler.loadFile(Compiler.java:7020)
        at clojure.main$load_script.invoke(main.clj:299)
        at clojure.main$init_opt.invoke(main.clj:304)
        at clojure.main$initialize.invoke(main.clj:332)
        at clojure.main$null_opt.invoke(main.clj:367)
        at clojure.main$main.doInvoke(main.clj:445)
        at clojure.lang.RestFn.invoke(RestFn.java:421)
        at clojure.lang.Var.invoke(Var.java:419)
        at clojure.lang.AFn.applyToHelper(AFn.java:163)
        at clojure.lang.Var.applyTo(Var.java:532)
        at clojure.main.main(main.java:37)
Caused by: java.lang.ClassNotFoundException: android.widget.SearchView
        at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:190)
        at neko.ui.mapping__init.__init0(Unknown Source)
        at neko.ui.mapping__init.<clinit>(Unknown Source)
        ... 68 more
Compilation failed.
```

## References

* [おいしい Clojure 入門 初版](http://gihyo.jp/book/2013/978-4-7741-5991-1)

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright 2013 ka
