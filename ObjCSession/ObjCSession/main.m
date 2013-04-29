#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
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

