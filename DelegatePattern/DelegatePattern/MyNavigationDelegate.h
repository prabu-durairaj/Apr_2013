#import <Foundation/Foundation.h>

@protocol MyNavigationDelegate <NSObject>
    @required
    -(void)gotoScreen1;
    -(void)gotoScreen2;
    -(void)gotoScreen3;
@end
