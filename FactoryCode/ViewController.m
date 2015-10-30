//
//  ViewController.m
//  FactoryCode
//
//  Created by zhangC on 15/10/29.
//  Copyright © 2015年 029lujiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inPutCode.delegate = self;
    [self.inPutCode addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [self.inPutCode becomeFirstResponder];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createOutPutCode:(id)sender
{
    
    [self.inPutCode resignFirstResponder];
    
    if ([[self.inPutCode text] length] != 5) {
        return;
    }
    
    NSInteger input = [[self.inPutCode text] integerValue];
    NSInteger ouput = input;
    NSString * code = [NSString stringWithFormat:@"%05ld", (long)ouput];
    [self.outPutCode setText:code];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    [pasteboard setString:self.outPutCode.text];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.inPutCode resignFirstResponder];
}

- (void)textFieldDidChange:(UITextField *)textField
{
    if (textField == self.inPutCode) {
        if (textField.text.length > INPUTLENGTH ) {
            textField.text = [textField.text substringToIndex:INPUTLENGTH];
        }else if(textField.text.length == INPUTLENGTH){
            [self createOutPutCode:nil];
        }
    }
}

@end
