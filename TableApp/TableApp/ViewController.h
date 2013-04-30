#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIActionSheetDelegate>
    @property NSMutableArray* theatres;
@end
