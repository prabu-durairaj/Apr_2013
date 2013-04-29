
#import <Foundation/Foundation.h>
#import "Account.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Account* acc = [[Account alloc]initWithNumber:@"1213131313"];
        [acc deposit:1000 mobile:@"2432343242"];
        
        @try {
            [acc withdraw:400];
            [acc withdraw:2000];
        }
        @catch (NSException *exception) {
            NSLog(@"Error: %@",exception);
        }
        
        
        
    }
    return 0;
}

