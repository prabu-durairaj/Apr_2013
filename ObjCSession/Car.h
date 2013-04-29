
#import <Foundation/Foundation.h>

@interface Car : NSObject
@property NSString* model;
@property int year;

-(Car*)initWithModelAndYear: (NSString*)theModel : (int)theYear;

@end
