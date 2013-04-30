#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"
#import "Calculator.h"
#import "Car.h"
#import "Admin.h"
#import "Manager.h"
#import "Circle.h"
#import "Company.h"
#import "Owner.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Dog* jimmy = [Dog new];
        Owner* sam = [Owner new];
        sam.dog = jimmy;
        [sam walk];
        
//        Company* cm = [Company new];
//        //cm->name = @"SM";
//        
//        Circle* c1 = [Circle new];
//        [c1 draw];
//        
//        id<Shape> c2 = [Circle new]; //id is equivalent of Object in Java
//        [c2 draw];
//        
//        id<GeometricItem> g1 = [Circle new];
//
//        if([g1 conformsToProtocol:@protocol(GeometricItem)]){
//            //do something
//        }
//        
        
        
//        
//        //Immutable
//        NSString* str1 = @"Ruby";
//        str1 = @"Groovy";
//        
//        NSMutableString* mutStr1 = [[NSMutableString alloc]initWithString:@"Ruby"];
//        [mutStr1 appendString:@" on Rails"];
//        NSLog(@"%@",mutStr1);
//        
//        NSArray* arr1 = [[NSArray alloc]initWithObjects:@"Chennai",@"Mumbai", nil];
//        for (int i=0; i< arr1.count; i++) {
//            NSLog(@"%@",[arr1 objectAtIndex:i]);
//        }
//        
//        NSMutableArray* arr2 = [NSMutableArray new];
//        [arr2 insertObject:@"Kochi" atIndex:0];
//        [arr2 insertObject:@"Pune" atIndex:1];
//        [arr2 insertObject:@"Bangalore" atIndex:2];
//        for (int i=0; i< arr2.count; i++) {
//            NSLog(@"%@",[arr2 objectAtIndex:i]);
//        }
//        
//        NSDictionary* dict1 = [[NSDictionary alloc]initWithObjectsAndKeys:
//                               @"TN",@"60000",
//                               @"MH",@"63000",
//                               @"GJ",@"650000",nil];
//        
//        NSEnumerator* keys =  [dict1  keyEnumerator];
//        NSString* obj = [keys nextObject];
//        while(obj != NULL){
//            NSLog(@"Key: %@, Value: %@",obj,[dict1 objectForKey:obj]);
//            obj = [keys nextObject];
//        }
//        
//        NSMutableDictionary* mutDict = [NSMutableDictionary new];
//        [mutDict setValue:@"RJ" forKey:@"1"];
//        [mutDict setValue:@"CH" forKey:@"2"];
//        [mutDict setValue:@"UK" forKey:@"3"];
//          [mutDict setValue:@"KA" forKey:@"1"];
//        
//        NSEnumerator* keys2 =  [mutDict  keyEnumerator];
//        NSString* obj2 = [keys2 nextObject];
//        while(obj2 != NULL){
//            NSLog(@"Key: %@, Value: %@",obj2,[mutDict objectForKey:obj2]);
//            obj2 = [keys2 nextObject];
//        }
        
//
//        Employee* emp = [Manager new];
//        emp.name = @"Sam";
//        emp.salary = 232131;
//        [emp work];
//        
//        
////        [Admin monitor];
// //       Admin* admin = [[Admin alloc]init];
//        //int hrs = Admin.hours;
//        
////        Calculator* calc = [Calculator new];
//      //  int sum = [calc addNumbers:12 :1 :2];
// //       int sum = [calc addNumbers:12 number2:1 number3:2];
//
//        
//        //Car* car = [Car new];
////        Car* car = [[Car alloc] init];
////        car.model = @"City";
////        car.year = 2010;
//
//        Car* car = [[Car alloc]initWithModelAndYear:@"City" :2011];
//        NSLog(@"%@",car.model);
//        
//        
////        Calculator* calc = [Calculator new];
////        int product = [calc multiply:12 :12 :13]; //calc.multiply(12,12,13);
////        int sum = [calc add:10 :12];
////        NSLog(@"%d, %d",product,sum);
////        
////        Book* b1 = [Book new];
////        b1.title = @"Objective-C";
////        b1.price = 230;
////        NSLog(@"%@,%d",b1.title,b1.price);
////        
////        Person* p1 = [Person new];
////        [p1 setName:@"Ram"];    //p1.setName("Ram");
////        [p1 setAge:50];  //p1.setAge(50);
////        
////        NSLog(@"%@,%d",[p1 getName],[p1 getAge]);
//        
//        //NSLog(@"Hello World");
    }
    return 0;
}

