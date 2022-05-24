//
//  ViewController.h
//  Outta
//
//  Created by Han Ming on 15/05/2017.
//  Copyright © 2017 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTColorPickerImageView.h"


CGFloat fontSize;
CGFloat minSize;

@interface ViewController : UIViewController<UITextViewDelegate, DTColorPickerImageViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIButton *btnColor;
@property (weak, nonatomic) IBOutlet UIButton *btnTransparent;
@property (weak, nonatomic) IBOutlet UIButton *btnExtras;
@property (nonatomic) BOOL *bgColor;

- (IBAction)onBackgroundColor:(id)sender;
- (IBAction)onTransparent:(id)sender;
- (IBAction)onSave:(id)sender;


@end

