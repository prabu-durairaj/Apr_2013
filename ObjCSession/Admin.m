#import "Admin.h"

@implementation Admin
@synthesize name;

-(void)sendMail{
    NSLog(@"Mailing");
}
+(void)monitor{
    NSLog(@"%monitoring %d hours",hours);
}
@end
