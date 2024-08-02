//
//  ViewController.m
//  msdk-objc
//
//  Created by Aliaksandra Piotukh on 02.08.24.
//

#import "ViewController.h"
#import "msdk_objc-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UsercentricsHelper *helper = [[UsercentricsHelper alloc] init];
        [helper displayBanner];
}


@end
