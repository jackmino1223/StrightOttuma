//
//  ViewController.m
//  Outta
//
//  Created by Han Ming on 15/05/2017.
//  Copyright © 2017 Kevin. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if([deviceType isEqualToString:@"iPad"] || [deviceType isEqualToString:@"iPad Simulator"]){
        fontSize = 120;
        minSize = 15;
    }
    else{
        fontSize = 120;
        minSize = 8;
    }
    
    
    self.txtView.textContainer.maximumNumberOfLines = 1;
    self.txtView.textContainer.lineBreakMode = NSLineBreakByTruncatingTail;
    self.txtView.delegate = self;
    
    [self.txtView setTextContainerInset:UIEdgeInsetsZero];
    self.txtView.textContainer.lineFragmentPadding = 0;
    
    self.btnTransparent.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.btnExtras.titleLabel.adjustsFontSizeToFitWidth = YES;
    
}


- (void)textViewDidChange:(UITextView *)textView{
    
    while (fontSize > minSize)
    {
        
        CGRect rect = [self.txtView.text boundingRectWithSize:CGSizeMake(1000, FLT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont fontWithName:@"Bebas Neue" size:fontSize]} context:nil];
        
        if (rect.size.width <= self.txtView.frame.size.width) break;
        
        fontSize -= 1.0;
    }
    
    [self.txtView setFont:[UIFont fontWithName:@"Bebas Neue" size:fontSize]];
    
    
    CGFloat topCorrect = ([self.txtView bounds].size.height - [self.txtView contentSize].height * [self.txtView zoomScale])/2.0;
    NSLog(@"%f", topCorrect);
    topCorrect = ( topCorrect < 0.0 ? topCorrect : -topCorrect );
    self.txtView.contentOffset = (CGPoint){.x = 0, .y = topCorrect};
    
}

- (void)imageView:(DTColorPickerImageView *)imageView didPickColorWithColor:(UIColor *)color
{
    
    CGFloat red, green, blue;
    [color getRed:&red green:&green blue:&blue alpha:NULL];
    
    NSLog(@"Picked Color Components: %.0f, %.0f, %.0f", red * 255.0f, green * 255.0f, blue * 255.0f);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSave:(id)sender {
}
@end
