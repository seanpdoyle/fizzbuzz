extern crate fizzbuzz;
use fizzbuzz::{buzz,fizz,fizz_buzz};

#[cfg(not(test))]
fn main() {
    for num in range(0i, 100) {
        if fizz_buzz(num) {
            println!("FizzBuzz");
        }
        else if buzz(num) {
            println!("Buzz");
        }
        else if fizz(num) {
            println!("Fizz");
        } else {
            println!("{}", num);
        };
    }
}

