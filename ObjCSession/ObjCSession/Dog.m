#import "Dog.h"

@implementation Dog
-(void)shout{
    NSLog(@"bow bow");
}
-(void)makeNoise{
    [self shout];
}
@end
