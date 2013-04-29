#import <Foundation/Foundation.h>

@interface Game : NSObject

@property int target;
@property NSString* message;
@property int attempts;
@property Boolean gameOver;

-(void)initialize;
-(void)play : (int)guess;
@end
