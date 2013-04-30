#import "QuizViewController.h"

@implementation QuizViewController

@synthesize navDelegate;
@synthesize mathQuestionStore;
@synthesize questionIdLabel;
@synthesize operand1Label;
@synthesize operand2Label;
@synthesize operatorSignLabel;
@synthesize answerTextField;

int currentQuestionId = 1;
MathQuestion* currentQuestion;

-(MathQuestion*)displayQuestion{
    NSString* questionId = [[NSString alloc]initWithFormat:@"#%d",currentQuestionId];
    MathQuestion* question = [mathQuestionStore getMathQuestionAt:questionId];
    if(question == nil)
        return nil;
    questionIdLabel.text = questionId;
    operand1Label.text = [[NSString alloc]initWithFormat:@"%d",question.number1];
    operand2Label.text = [[NSString alloc]initWithFormat:@"%d",question.number2];
    operatorSignLabel.text = question.operatorSign;
    
    currentQuestionId++;
    return question;
}
-(IBAction)nextButtonTapped{
    int answer = [answerTextField.text intValue];
    currentQuestion.enteredAnswer = answer;
    
    currentQuestion = [self displayQuestion];
    if(!currentQuestion)
        [navDelegate showSummaryScreen:mathQuestionStore];
}
-(IBAction)hideKeyboard{
    [answerTextField resignFirstResponder];
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
    mathQuestionStore = [MathQuestionStore new];
    [mathQuestionStore populateStore];
    currentQuestion = [self displayQuestion];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
