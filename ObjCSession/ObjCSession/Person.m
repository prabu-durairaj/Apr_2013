#import "Person.h"

@implementation Person
-(void)setName:(NSString *)theName{
    name = theName;
}
-(NSString*)getName{
    return name;
}
-(void)setAge:(int)theAge{
    age = theAge;
}
-(int)getAge{
    return age;
}
-(void)work{
    NSLog(@"%@ is working",name);
}
@end
