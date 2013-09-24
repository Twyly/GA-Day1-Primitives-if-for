//
//  GAViewController.m
//  My First GA App
//
//  Created by Teddy Wyly on 9/21/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "GAViewController.h"

@interface GAViewController ()

@end

@implementation GAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // IF STATEMENTS
    
    // Creating two variables, one integer and one BOOL
    int myAge = 95;
    BOOL isMale = NO;
    
    // Using an if statement to create a conditional situation
    // Try changing the variables above and test the outcome
    // The && symbol means AND, or both conditionals are required
    if (myAge > 90 && isMale) {
        NSLog(@"You are kind of old and you are male");
    } else if (myAge > 70) {
        NSLog(@"You are still kind of old");
    } else if (myAge > 39) {
        NSLog(@"Middle aged");
    } else {
        NSLog(@"Youngin");
    }
    
    
    
    int myHeight = 20;
    int myWeight = 200;
    
    // The symbol used for OR is ||
    if (myHeight > 55 || myWeight > 195) {
        NSLog(@"I am large");
    }
    
    
    // EXAMPLE OF A FOR LOOP
    
    
    // Using a for loop to repeat code
    for (int bottles = 99; bottles >= 0; bottles--) {
        NSLog(@"%i bottle of beer on the wall, %i bottles of beer!", bottles, bottles);
        NSLog(@"Take on down, pass it around");
        if (bottles <= 0) NSLog(@"No more beer!");
        else NSLog(@"%i bottles of beer!", bottles - 1);
    }
    
    
    // CALLING METHODS
    
    
    // Calling various methods that are implemented below in our GAViewController Class
    
    [self printHelloSir];
    [self printNumber:10];
    [self printFirstNumber:5 andSecondNumber:6];
    
    int sumOfTenAndSix = [self addTwoNumbersWithFirstNumber:10 andSecondNumber:6];
    NSLog(@"Answer is %i", sumOfTenAndSix);
    
    [self printNumberOfTimes:36];
    
    
    // Initializing a NSString object and a NSNumber object
    NSString *mySecondString = @"Hello";
    NSNumber *myNumberAsAnObject = [[NSNumber alloc] initWithInt:6];
    
    // Initialzing or creating an array
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    
    // Adding our NSString and NSNumber object to our NSMutableArray
    [myMutableArray addObject:mySecondString];
    [myMutableArray addObject:myNumberAsAnObject];
    
    NSLog(@"My Array is %@", myMutableArray);
    
    [self printNSString:@"Hello World 4 times"];

    
    
}

// A simple method that prints Hello Sir to the console.  It does not take any arguments or have a return value
- (void)printHelloSir
{
    NSLog(@"Hello Sir");
}


// A method that takes a signle parameter, an integer, and prints it to the console
- (void)printNumber:(int)number
{
    NSLog(@"%i", number);
}

// A method that prints two numbers that are passed in
- (void)printFirstNumber:(int)firstNumber andSecondNumber:(int)secondNumber
{
    NSLog(@"We are printing two numbers: %i and %i", firstNumber, secondNumber);
}

// A method that adds two numbers together and returns the sum
- (int)addTwoNumbersWithFirstNumber:(int)firstNumber andSecondNumber:(int)secondNumber
{
    int sum = firstNumber + secondNumber;
    return sum;
}

// A method that will print Hello a variable number of times
- (void)printNumberOfTimes:(int)numberOfTimes
{
    for (int count = 1; count <= numberOfTimes; count++) {
        NSLog(@"Hello");
    }
}

// A method that will print an NSString four times
- (void)printNSString:(NSString *)string
{
    for (int count = 1; count <= 4; count++) {
        NSLog(@"I am printing %@", string);
    }
}

@end
