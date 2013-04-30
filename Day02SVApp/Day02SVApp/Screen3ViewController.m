#import "Screen3ViewController.h"

@implementation Screen3ViewController
@synthesize sampleLabel;

-(void)startTimer: (UIApplication*)application{
    NSLog(@"*************Starting timer");
}
-(void)pauseTimer: (UIApplication*)application{
    NSLog(@"*************Pause timer");
}


-(IBAction)gotoScreen2{
    [self.view removeFromSuperview];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIApplication* app = [UIApplication sharedApplication];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pauseTimer:) name:UIApplicationWillResignActiveNotification  object:app];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(startTimer:) name:UIApplicationDidBecomeActiveNotification object:app];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
