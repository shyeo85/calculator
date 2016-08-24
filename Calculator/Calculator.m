//
//  Calculator.m
//  nayeon
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved. 8.24
//

#import "Calculator.h"

@implementation Calculator
//{
//    double accumulator;
//}
//-(void) setAccumulator: (double) value
//{
//    accumulator = value;
//}
-(void) clear
{
    self.accumulator =0;
}
//-(double) accumulator
//{
//    return accumulator;
//}
-(void) add: (double) value
{
    self.accumulator += value;
}
-(void) subtract: (double) value
{
    self.accumulator -= value;

}
-(void) multiply:  (double) value
{
    self.accumulator *= value;

}
-(void) divide: (double) value
{
    self.accumulator /= value;
   
}
-(void) printAccumulator
{
    NSLog(@"The result is %g", self.accumulator);
}


@end
