#import <Foundation/Foundation.h>
#import "MathQuestionStore.h"

@protocol NavigationDelegate <NSObject>
@required
-(void)showQuizScreen;
-(void)showSummaryScreen:(MathQuestionStore*)mathQuestionStore;
@end
