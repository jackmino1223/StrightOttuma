//
//  ViewController.m
//  Outta
//
//  Created by Han Ming on 15/05/2017.
//  Copyright © 2017 Kevin. All rights reserved.
//

#import "ExtrasViewController.h"

@implementation ExtrasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)viewWillAppear:(BOOL)animated{
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if ([deviceType isEqualToString:@"iPad"]){
        
        [self.btnAd setBackgroundImage:[UIImage imageNamed:@"iPad129"] forState:UIControlStateNormal];
        [self.btnShirt setBackgroundImage:[UIImage imageNamed:@"bipad129"] forState:UIControlStateNormal];
    }
    
    if ([deviceType isEqualToString:@"iPhone"]){
        
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        CGFloat screenWidth = screenRect.size.width;
        
        if (screenWidth > 320){
            [self.btnAd setBackgroundImage:[UIImage imageNamed:@"iPhone5"] forState:UIControlStateNormal];
            [self.btnShirt setBackgroundImage:[UIImage imageNamed:@"biphone5"] forState:UIControlStateNormal];
        }else{
            [self.btnAd setBackgroundImage:[UIImage imageNamed:@"iPhone6"] forState:UIControlStateNormal];
            [self.btnShirt setBackgroundImage:[UIImage imageNamed:@"biphone6"] forState:UIControlStateNormal];
        }
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onItem1:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"http://designfontapps.com"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
        
}

- (IBAction)onItem2:(id)sender {
    
}

- (IBAction)onItem3:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://merchentreprenuer.com"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

- (IBAction)onShirt:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://merchentreprenuer.com"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];

}

- (IBAction)onAd:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://merchentreprenuer.com"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];

}
@end
