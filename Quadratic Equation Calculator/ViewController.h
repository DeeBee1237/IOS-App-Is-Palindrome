//
//  ViewController.h
//  Quadratic Equation Calculator
//
//  Created by Dragos Bercea  on 8/28/17.
//  Copyright © 2017 Dragos Bercea . All rights reserved.
//

// nonatomic : means multiple threads can access this object
// strong : a strong pointer means that the pointer is an "ownder"
// and if the object pointed to changes, the pointer still points to the object
// this is not true for a weak reference.

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// the field where users will input their word:
@property (nonatomic,strong) IBOutlet UITextField* inputField;
// the view that the field will be added to:
@property (nonatomic,strong) UIView* myView;
// the calculate button where isPalindrome is computed:
@property (nonatomic,strong) UIButton* calculate;
// where the calculation results get displayed:
@property (nonatomic,strong) UILabel* resultDisplay;



@end

