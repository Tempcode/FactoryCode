//
//  ViewController.h
//  FactoryCode
//
//  Created by zhangC on 15/10/29.
//  Copyright © 2015年 029lujiang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define INPUTLENGTH     (5)     //输入长度限制

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inPutCode;
@property (weak, nonatomic) IBOutlet UITextField *outPutCode;

- (IBAction)createOutPutCode:(id)sender;

@end

