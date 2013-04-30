#import <Foundation/Foundation.h>
#import "MathQuestion.h"

@interface MathQuestionStore : NSObject
@property NSMutableDictionary* questionsCollection;

-(void)populateStore;
-(MathQuestion*)getMathQuestionAt:(NSString*)questionId;
-(int)getTotalNumberOfQuestions;
-(int)getTotalNumberOfCorrectAnswers;
@end
