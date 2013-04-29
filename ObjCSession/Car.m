
#import "Car.h"

@implementation Car
@synthesize model;
@synthesize year;

-(Car*)initWithModelAndYear:(NSString *)theModel :(int)theYear{
    //Car* car = [Car new];
    Car* car = [self init];//self is this keyword in Java
    car.model = theModel;
    car.year = theYear;
    return car;
}
@end
