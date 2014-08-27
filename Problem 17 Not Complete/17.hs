sayDigit x = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'] !! x

sayTeen x = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] !! x

sayTens x = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'] !! x

sayHundreds x = (sayDigit x) ++ 'hundred'

sayThousands x = (sayDigit x) ++ 'thousands'

