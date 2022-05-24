//
//  ViewController.h
//  Outta
//
//  Created by Han Ming on 15/05/2017.
//  Copyright © 2017 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExtrasViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnAd;
@property (weak, nonatomic) IBOutlet UIButton *btnShirt;

- (IBAction)onItem1:(id)sender;
- (IBAction)onItem2:(id)sender;
- (IBAction)onItem3:(id)sender;
- (IBAction)onShirt:(id)sender;
- (IBAction)onAd:(id)sender;



@end

