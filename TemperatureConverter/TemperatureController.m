//
//  TemperatureController.m
//  TemperatureConverter
//
//  Created by Vijay Chavan on 02/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TemperatureController.h"

@interface TemperatureController ()

@end

@implementation TemperatureController

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
    NSLog(@"view did load");

 
    
}

- (void)viewDidUnload
{
    entryText = nil;
    entryLabel = nil;
    segcontrol = nil;
    resultText = nil;
    resultLabel = nil;
    web = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)convertButton:(id)sender 
{
    if(entryLabel.text==@"C")
    {
        float deg=entryText.text.floatValue;
        float farh=deg*1.8+32;
        resultText.text=[NSString stringWithFormat:@"%.2f",farh];
        resultLabel.text=@"F";
    }
    
    if(entryLabel.text==@"F")
    {
        float farh=entryText.text.floatValue;
        float deg=(farh-32)*5.556;
        resultText.text=[NSString stringWithFormat:@"%.2f",deg];
        resultLabel.text=@"C";
    }
        
}

- (IBAction)segmentButton:(id)sender 
{
    if(segcontrol.selectedSegmentIndex==1)
    {
        entryLabel.text=@"C";
    }
    
    if(segcontrol.selectedSegmentIndex==0)
    {
        entryLabel.text=@"F";
    }
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==entryText)
    {
        [resultText becomeFirstResponder];
    }
    if(textField==resultText)
    {
        [resultText resignFirstResponder];
    }
    return true;
}
@end
