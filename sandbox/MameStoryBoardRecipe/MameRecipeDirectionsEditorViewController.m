//
//  MameRecipeDirectionsEditorViewController.m
//  MameStoryBoardRecipe
//
//  Created by SHIBATA Hiroshi on 2013/02/13.
//  Copyright (c) 2013年 SHIBATA Hiroshi. All rights reserved.
//

#import "MameRecipeDirectionsEditorViewController.h"

@interface MameRecipeDirectionsEditorViewController ()

@end

@implementation MameRecipeDirectionsEditorViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    self.recipe.directions = self.textView.text;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.title = @"Edit Directions";
    [self.textView becomeFirstResponder];
    self.textView.text = self.recipe.directions;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.textView resignFirstResponder];
}

@end
