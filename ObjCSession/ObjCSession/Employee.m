#import "Employee.h"

@implementation Employee
@synthesize name;
@synthesize salary;

-(void)work{
    NSLog(@"%@ is yawning",name);
}
@end
