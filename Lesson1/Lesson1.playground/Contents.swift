//iOS Smart Ninja Course: Lesson1
//Author: Martin Mikeln

import UIKit


//Iterative function to calculate Fibonacci number with a seed as a parameter
func Fibonacci_iterative(number: Int, _ seed: [Int] = [0,1]) -> Int {
    
    var fib_num = seed
    
    
    if(number >= 3){

        for i in 0...number-3 {
        
            fib_num.append(fib_num[i] + fib_num[i+1])
    
        }
    }
    
    return fib_num[number-1]
    
}

//Test cases
print("9th Fib. number with default seed: \(Fibonacci_iterative(9))")
print("9th Fib. number with [1,1] seed: \(Fibonacci_iterative(9,[1,1]))")



//Recursive function to calculate Fibonacci number with a seed as a parameter
func Fibonacci_recursive(number: Int, _ seed: [Int] = [0,1]) -> Int {
    
    var fib_num = seed
    
    
    if(number >= 3){
        
        
        return Fibonacci_recursive(number-1, fib_num) + Fibonacci_recursive(number-2, fib_num)
        
    }
        
    else{
        
        return fib_num[number-1]
    
    }
    
    
}

//Test case
print("9th Fib. number with default seed: \(Fibonacci_recursive(9))")
print("9th Fib. number with [1,1] seed: \(Fibonacci_recursive(9,[1,1]))")











