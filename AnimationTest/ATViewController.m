//
//  ATViewController.m
//  AnimationTest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ATViewController.h"

@interface ATViewController ()

@property (nonatomic, strong) UIView *smallBlock;

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    UIView *smallBlock = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    smallBlock.backgroundColor = [UIColor blueColor];
    [self.view addSubview:smallBlock];
    self.smallBlock = smallBlock;

    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithRect(CGRectMake(0, 0, self.view.bounds.size.width - 20, self.view.bounds.size.height - 20), NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced; // Makes longer sides slow down
    
    [self.smallBlock.layer addAnimation:orbit forKey:@"orbit"];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
