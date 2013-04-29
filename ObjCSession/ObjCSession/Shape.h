#import <Foundation/Foundation.h>

@protocol Shape <NSObject>

@required
-(void)draw;
-(int)area;

@optional
-(void)perimeter;

@end
