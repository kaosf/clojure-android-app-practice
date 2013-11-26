# Clojure Android App Practice

## My Notes

Modify `$HOME/.lein/profiles.clj` by adding `[lein-droid/lein-droid "0.2.0"]` into `{:user {:plugins [ __here__ ]}}`.

```sh
lein droid doall
```

`doall` is same to `compile` and `deployment`.

`deployment` is same to `install`, `run` and `forward-port`.

## References

* [おいしい Clojure 入門 初版](http://gihyo.jp/book/2013/978-4-7741-5991-1)

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright 2013 ka
