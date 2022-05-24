//
//  ViewController.m
//  Outta
//
//  Created by Han Ming on 15/05/2017.
//  Copyright © 2017 Kevin. All rights reserved.
//

#import "ColorViewController.h"

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)imageView:(DTColorPickerImageView *)imageView didPickColorWithColor:(UIColor *)color
{
    
    CGFloat red, green, blue;
    [color getRed:&red green:&green blue:&blue alpha:NULL];
    
    NSLog(@"Picked Color Components: %.0f, %.0f, %.0f", red * 255.0f, green * 255.0f, blue * 255.0f);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showColorPickerSegue"]){
        ViewController *viewController = (ViewController *)segue.destinationViewController;
        viewController.bgColor = nil;
    }
}


@end
