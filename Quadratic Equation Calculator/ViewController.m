//
//  ViewController.m
//  Quadratic Equation Calculator
//
//  Created by Dragos Bercea  on 8/28/17.
//  Copyright © 2017 Dragos Bercea . All rights reserved.
//

#import "ViewController.h"

// x coordinate for the input field defined here:
const int FIELD_X = 110;
// x coordinate for the button defined here:
const int BUTTON_X = FIELD_X; // should always be 20 px to the right of the field.

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // initialize my view:
    _myView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 500, 500)];

    
    //initialize the input field with a frame:
    CGRect frameForInputField = CGRectMake(FIELD_X, 50, 200, 50);
    _inputField = [[UITextField alloc] initWithFrame:frameForInputField];
    _inputField.placeholder = @"enter word here";
    _inputField.borderStyle = UITextBorderStyleRoundedRect;
    
    [_myView addSubview:_inputField];
    
    // initialize the calculate button:
    CGRect frameForButton = CGRectMake(BUTTON_X, 200, 200, 20);
    _calculate = [[UIButton alloc]initWithFrame:frameForButton];
    [_calculate setTitle:@"Is Palindrome" forState: UIControlStateNormal];
    [_calculate addTarget:self action:(@selector(showResults)) forControlEvents:UIControlEventTouchUpInside];
    [_calculate setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    _calculate.layer.cornerRadius = 2;
    _calculate.layer.borderWidth = 1;
    _calculate.layer.borderColor = [UIColor orangeColor].CGColor;
    
    [_myView addSubview: _calculate];
    
    // initialize the UILabel (result display)
    CGRect frameForResultDisplay = CGRectMake(FIELD_X, 280, 300, 100);
    _resultDisplay = [[UILabel alloc] initWithFrame:frameForResultDisplay];
    _resultDisplay.text = @"results ...";
    
    [_myView addSubview: _resultDisplay];
    
    
    // add my view to the view:
    [self.view addSubview: _myView];
    
    
    
}

-(void) showResults {

    NSString* userInput = [_inputField.text lowercaseString];
    
    if (userInput.length == 0 || userInput.length == 1) {
        _resultDisplay.text = @"word is too short";
        return;
    }
    
    if ([self isPalindrome:userInput])
        _resultDisplay.text = @"your word is a palindrome";
    
    
    else
        _resultDisplay.text = @"your word is not a palindrome";

}


-(BOOL) isPalindrome : (NSString*) string {
    
    int i = 0;
    int j = string.length - 1;
    
    while (i < j) {
        char* currentStart = [string characterAtIndex:i];
        char* currentEnd = [string characterAtIndex:j];
        
        if (currentStart == currentEnd) {
            i++;
            j--;
            continue;
        }
        
        else
            return NO;

    }
    
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
