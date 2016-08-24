//
//  Calculator.h
//  nayeon
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, assign) double accumulator;
// -(double) accumulator;    property를 대체를 할수 있다. 맴버변수의 선언과 외부에서 그 맴버 변수를 접속하는 것을 대체할수 있다.

// -(void) setAccumulator: (double) value;

-(void) clear;

-(void) printAccumulator;

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply:  (double) value;
-(void) divide: (double) value;
@end
