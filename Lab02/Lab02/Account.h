
#import <Foundation/Foundation.h>

@interface Account : NSObject
@property NSString* accountNumber;
@property double balance;

-(Account*)initWithNumber: (NSString*)accNumber;
-(void)deposit: (double)amount mobile:(NSString*)mobile;
-(void)withdraw : (double)amount;
@end
