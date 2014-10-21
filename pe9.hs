pe9 = head [ floor (a * b * c) | b <- [1..1000], 
                    a <- [1..b], 
                    let c2 = a*a + b*b, 
                    let c = sqrt c2,
                    a + b + c == 1000]