#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString* name;
    int age;
}
-(void)setName : (NSString*)theName;
-(NSString*)getName;
-(void)setAge : (int) theAge;
-(int)getAge;

-(void)work;

@end
