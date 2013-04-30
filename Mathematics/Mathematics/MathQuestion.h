#import <Foundation/Foundation.h>

@interface MathQuestion : NSObject

@property int number1;
@property int number2;
@property int expectedAnswer;
@property int enteredAnswer;
@property NSString* operatorSign;

-(BOOL)evaluateAnswers;
-(void)add;
-(void)subtract;
-(void)multiply;
-(MathQuestion*)create:(int)num1 number2:(int)num2 operatorSign:(NSString*)theOperatorSign;
@end
