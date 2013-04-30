#import <Foundation/Foundation.h>

@interface LoginHelper : NSObject
+(BOOL)authenticate:(NSString*)userName :(NSString*)password;
@end
