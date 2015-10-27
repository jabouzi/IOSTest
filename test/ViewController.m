//
//  ViewController.m
//  test
//
//  Created by Skander Jabouzi on 2015-10-19.
//  Copyright © 2015 Skander Software Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *TextEdit;
@property (weak, nonatomic) IBOutlet UILabel *LabelText;
//@property (weak, nonatomic) IBOutlet UIButton *ButtonEdit;

@end

@implementation ViewController

- (IBAction)ChangeLabel:(id)sender {
    [self copyText];
}

- (IBAction)ShowAlert:(id)sender {
    //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"This is an alert" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
        message:@"This is an alert."
        preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
        handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self copyText];
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)copyText
{
    NSString* typedText = [self.TextEdit text];
    [self.LabelText setText:typedText];
    [[self TextEdit] resignFirstResponder];
}

@end
