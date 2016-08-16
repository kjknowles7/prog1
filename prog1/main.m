//
//  main.m
//  prog1
//
//  Created by Kevin Knowles on 8/15/16.
//  Copyright © 2016 Kevin Knowles. All rights reserved.
//


#import <Foundation/Foundation.h>

// Interface section
@interface Fraction: NSObject

-(void)     print;
-(void)     setNumerator: (int) n;
-(void)     setDenominator: (int) d;
-(int)      getNumerator;
-(int)      getDenominator;

@end

//Implementation section
@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) getNumerator
{
    return numerator;
}

-(int) getDenominator
{
    return denominator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Instantiate a fraction object
        Fraction *myFraction = [[Fraction alloc] init];
        
        //Set instance variables
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        //Display the Fraction
        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
