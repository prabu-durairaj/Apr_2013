#import "Game.h"

@implementation Game
@synthesize target;
@synthesize attempts;
@synthesize message;
@synthesize gameOver;

-(void)initialize{
    target = arc4random()%100;
    //NSLog(@"%d",target);
    attempts = 0;
    message = @"";
}
-(void)play:(int)guess{
    attempts++;
    if(guess > target)
        message = @"Aim Lower";
    else if(guess < target)
        message = @"Aim Higher";
    else{
        message = @"You've got it!!!";
        gameOver = true;
    }
}

@end
