#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"
#import "Calculator.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Calculator* calc = [Calculator new];
        int product = [calc multiply:12 :12 :13]; //calc.multiply(12,12,13);
        int sum = [calc add:10 :12];
        NSLog(@"%d, %d",product,sum);
        
        Book* b1 = [Book new];
        b1.title = @"Objective-C";
        b1.price = 230;
        NSLog(@"%@,%d",b1.title,b1.price);
        
        Person* p1 = [Person new];
        [p1 setName:@"Ram"];    //p1.setName("Ram");
        [p1 setAge:50];  //p1.setAge(50);
        
        NSLog(@"%@,%d",[p1 getName],[p1 getAge]);
        
        //NSLog(@"Hello World");
    }
    return 0;
}

