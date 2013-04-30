#import "Owner.h"

@implementation Owner
@synthesize dog;
-(void)walk{
    NSLog(@"Walking with the dog");
    //[dog bark];
    [dog makeNoise];
}
@end
