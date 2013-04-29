#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(int)add : (int)num1:(int)num2; //public int add(int num1,int num2);
-(int)subtract : (int)num1:(int)num2;
-(int)multiply : (int)num1:(int)num2:(int)num3;

-(int)addNumbers : (int)num1 number2:(int)num2  number3:(int)num3;


@end
