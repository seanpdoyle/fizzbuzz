pub fn fizz(num: int) -> bool {
    num != 0 && num % 3 == 0
}

pub fn buzz(num: int) -> bool {
    num != 0 && num % 5 == 0
}

pub fn fizz_buzz(num: int) -> bool {
    fizz(num) && buzz(num)
}
