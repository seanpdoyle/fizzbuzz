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

## Haskell

Succinct Haskell

To run `fizzbuzz` for `[0..100]`:

```
$ ghc haskell/fizzbuzz.hs && haskell/fizzbuzz
```

## Python

Definitely not Ruby

To run the tests:

```
$ python -m unittest discover python
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
