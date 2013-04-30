#import "LoginHelper.h"

@implementation LoginHelper
+(BOOL)authenticate:(NSString *)userName :(NSString *)password{
    NSLog(@"%@, %@",userName,password);
    return [userName isEqual:@"admin"]  && [password isEqual:@"admin"]?true:false;
}
@end
