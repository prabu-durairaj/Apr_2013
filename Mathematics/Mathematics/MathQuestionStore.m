#import "MathQuestionStore.h"
#import "MathQuestion.h"

@implementation MathQuestionStore
@synthesize questionsCollection;

-(int)getTotalNumberOfCorrectAnswers{
    int total = 0;
    NSArray* keys = questionsCollection.allKeys;
    for (int i=0; i < keys.count; i++) {
        NSString* key = [keys objectAtIndex:i];
        MathQuestion* question = [questionsCollection objectForKey:key];
        total = [question evaluateAnswers]?total+1:total;
    }
    return total;
}
-(int)getTotalNumberOfQuestions{
    return questionsCollection.count;
}
-(MathQuestion*)getMathQuestionAt:(NSString *)questionId{
    MathQuestion* mathQuestion = [questionsCollection valueForKey:questionId];
    return mathQuestion;
}
-(void)populateStore{
    if(questionsCollection == NULL){
        questionsCollection = [NSMutableDictionary new];
        [questionsCollection setValue:[[MathQuestion alloc]create:1 number2:2 operatorSign:@"+"] forKey:@"#1"];
        [questionsCollection setValue:[[MathQuestion alloc]create:5 number2:6 operatorSign:@"*"] forKey:@"#2"];
        [questionsCollection setValue:[[MathQuestion alloc]create:12 number2:7 operatorSign:@"-"] forKey:@"#3"];
    }
    else
        @throw [NSException new];
}
@end
