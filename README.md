# FizzBuzz

Get out of your comfort zone.

## Ruby

Vanilla ruby with some good ole monkey-patching.

To run the tests:

```
$ ruby ruby/test/fizzbuzz_test.rb
```

## Rust

Followed along with [Rust For
Rubyists](http://www.rustforrubyists.com/book/book.html)

To run the tests:

```
$ rustc --test rust/fizzbuzz.rs && ./fizzbuzz && rm fizzbuzz
```

# Tests

To run all the tests

```
$ rake
```

To run only `ruby` tests

```
$ rake ruby
```

To run only `rust` tests

```
$ rake rust
```