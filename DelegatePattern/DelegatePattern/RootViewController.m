#import "RootViewController.h"

@implementation RootViewController
@synthesize screen1;
@synthesize screen2;
@synthesize screen3;

-(void) gotoScreen1{
    if(screen1 == NULL){
        screen1 = [[Screen1ViewController alloc]initWithNibName:@"Screen1ViewController" bundle:nil];
        screen1.navDelegate = self;
    }
    [self.view addSubview:screen2.view];
}
-(void) gotoScreen2{
    if(screen2 == NULL){
        screen2 = [[Screen2ViewController alloc]initWithNibName:@"Screen2ViewController" bundle:nil];
        screen2.navDelegate = self;
    }
    [self.view addSubview:screen2.view];
}
-(void) gotoScreen3{
    if(screen3 == NULL){
        screen3 = [[Screen3ViewController alloc]initWithNibName:@"Screen3ViewController" bundle:nil];
                screen3.navDelegate = self;
    }
    [self.view addSubview:screen3.view];
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    screen1 = [[Screen1ViewController alloc]initWithNibName:@"Screen1ViewController" bundle:nil];
    screen1.navDelegate = self;
    [self.view addSubview:screen1.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
