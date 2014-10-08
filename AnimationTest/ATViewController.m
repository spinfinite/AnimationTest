//
//  ATViewController.m
//  AnimationTest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ATViewController.h"

@interface ATViewController ()

@property (nonatomic, strong) UIView *blueSquare;

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *blueSquare = [[UIView alloc]initWithFrame:CGRectMake(60, 60, 60, 60)];
    blueSquare.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueSquare];
    self.blueSquare = blueSquare;

    CGRect boundingRect = CGRectMake(-60, 0, 260, 450);
    
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithRect(boundingRect, NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;
    
    [self.blueSquare.layer addAnimation:orbit forKey:@"orbit"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
