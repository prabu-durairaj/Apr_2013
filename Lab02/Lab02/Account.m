
#import "Account.h"

@implementation Account
@synthesize accountNumber;
@synthesize balance;

-(Account*)initWithNumber:(NSString *)accNumber{
    Account* acc = [self init];
    acc.accountNumber = accNumber;
    acc.balance = 1000;
    return acc;
}
-(void)deposit:(double)amount mobile:(NSString *)mobile{
    balance += amount;
}
-(void)withdraw:(double)amount{
    if(balance < amount)
        @throw [NSException new]; //throw new Exception();
    balance -= amount;
}
@end
