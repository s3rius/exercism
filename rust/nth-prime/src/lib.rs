pub fn nth(n: u32) -> u32 {
    let mut count = 1;
    let mut number = 1;
    loop {
        if count < n {
            number += 1;
            if test_prime(number) {
                count += 1;
            }
        } else {
            break;
        }
    }
    number
}

fn test_prime(number: u32) -> bool {
    for i in 2..number {
        if number % i == 0 {
            return false;
        }
    }
    return true;
}
