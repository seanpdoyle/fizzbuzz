fn main() {
    for num in range(0i, 100) {
        let string =
            if fizz_buzz(num) {
                "FizzBuzz".to_str()
            }
            else if buzz(num) {
                "Buzz".to_str()
            }
            else if fizz(num) {
                "Fizz".to_str()
            } else {
                num.to_str()
            };
        println!("{}", string);
    }
}

fn fizz(num: int) -> bool {
    num != 0 && num % 3 == 0
}

fn buzz(num: int) -> bool {
    num != 0 && num % 5 == 0
}

fn fizz_buzz(num: int) -> bool {
    fizz(num) && buzz(num)
}

#[test]
fn test_0_not_fizz() {
    assert!(!fizz(0), "0 is not divisble by 3");
}

#[test]
fn test_1_not_fizz() {
    assert!(!fizz(1), "1 is not divisble 3");
}

#[test]
fn test_3_fizz() {
    assert!(fizz(3), "3 is divisible by 3");
}

#[test]
fn test_0_not_buzz() {
    assert!(!buzz(0), "0 is not divisible by 5");
}

#[test]
fn test_3_not_buzz() {
    assert!(!buzz(3), "3 is not divisible by 5");
}

#[test]
fn test_5_buzz() {
    assert!(buzz(5), "5 is divisible by 5");
}

#[test]
fn test_0_not_fizz_buzz() {
    assert!(!fizz_buzz(0), "0 is not divisible by both 3 and 5");
}

#[test]
fn test_3_not_fizz_buzz() {
    assert!(!fizz_buzz(3), "3 is not divisible by both 3 and 5");
}

#[test]
fn test_15_fizz_buzz() {
    assert!(fizz_buzz(15), "15 is divisible by both 3 and 5");
}
