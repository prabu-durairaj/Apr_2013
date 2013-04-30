#import <Foundation/Foundation.h>
//#import "Dog.h"
#import "Doggy.h"

@interface Owner : NSObject
//@property Dog* dog;
@property id<Doggy> dog;

-(void)walk;
@end
