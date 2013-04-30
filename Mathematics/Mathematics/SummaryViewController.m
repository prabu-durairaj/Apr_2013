#import "SummaryViewController.h"

@implementation SummaryViewController

@synthesize summaryLabel;
@synthesize summaryTextView;
@synthesize navDelegate;
@synthesize mathQuestionStore;

-(void)displaySummary{
    int totalNumberOfQuestions = [mathQuestionStore getTotalNumberOfQuestions];
    int totalNumberOfCorrectAnswers = [mathQuestionStore getTotalNumberOfCorrectAnswers];
    NSString* summary = [[NSString alloc]initWithFormat:@"You have scored %d out of %d",totalNumberOfCorrectAnswers,totalNumberOfQuestions];
    summaryLabel.text = summary;
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
    [self displaySummary];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
