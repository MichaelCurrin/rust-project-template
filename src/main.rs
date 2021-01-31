use rand::prelude::*;

fn display_random() {
    let rand_int: u8 = random();
    println!("{}", rand_int);

    let coin_flip = random();
    if coin_flip {
        println!("Heads!");
    } else {
        println!("Tails!");
    }

    let mut rng = thread_rng();
    let rand_float: f64 = rng.gen();
    println!("x is: {}", rand_float);
}

fn greet() {
    println!("Hello, World!");
}

fn main() {
    display_random();
    greet();
}
