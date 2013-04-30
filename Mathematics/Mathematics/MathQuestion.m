#import "MathQuestion.h"

@implementation MathQuestion
@synthesize number1;
@synthesize number2;
@synthesize expectedAnswer;
@synthesize operatorSign;
@synthesize enteredAnswer;

-(MathQuestion*)create:(int)num1 number2:(int)num2 operatorSign:(NSString *)theOperatorSign{
    MathQuestion* mathQuestion = [self init];
    mathQuestion.number1 = num1;
    mathQuestion.number2 = num2;
    mathQuestion.operatorSign = theOperatorSign;
    if ([theOperatorSign isEqualToString:@"+"]) {
        [mathQuestion add];
    }
    else if ([theOperatorSign isEqualToString:@"-"]) {
        [mathQuestion subtract];
    }
    else if ([theOperatorSign isEqualToString:@"*"]) {
        [mathQuestion multiply];
    }
    else
        @throw [NSException new];
    return mathQuestion;
}
-(BOOL)evaluateAnswers{
    return expectedAnswer == enteredAnswer;
}
-(void)add{
    expectedAnswer = number1 + number2;
}
-(void)subtract{
    expectedAnswer = number1 - number2;
}
-(void)multiply{
    expectedAnswer = number1 * number2;
}
@end
