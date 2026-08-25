hi = "Hello, World!"

digits_to_num = |digits| {
    if digits.is_empty() {
        crash "NOPE"
    }

    var $num = 0

    for digit in digits {
        $num = ($num * 10) + digit   
    }

    $num
}

alt_digits_to_num = |digits| digits.fold(0, |num, digit| (num * 10) + digit)

main! = |_args| {
    echo!("I am going to say ${hi}")
    expect digits_to_num([1, 2]) == 12
    Ok({})
}
