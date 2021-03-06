//
//  ViewController.m
//  Yoga
//
//  Created by mike on 22/12/2016.
//  Copyright © 2016 mike. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Yoga.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *root = self.view;
    root.backgroundColor = [UIColor redColor];
    [root yg_setUsesYoga:YES];
    [root yg_setWidth:self.view.bounds.size.width];
    [root yg_setHeight:self.view.bounds.size.height];
    [root yg_setAlignItems:YGAlignCenter];
    [root yg_setJustifyContent:YGJustifyCenter];
    
    UIView *child1 = [UIView new];
    child1.backgroundColor = [UIColor blueColor];
    [child1 yg_setUsesYoga:YES];
    [child1 yg_setWidth:100];
    [child1 yg_setHeight:100];
    
    UIView *child2 = [UIView new];
    child2.backgroundColor = [UIColor greenColor];
    child2.frame = (CGRect) {
        .size = {
            .width = 200,
            .height = 100,
        }
    };
    
    UIView *child3 = [UIView new];
    child3.backgroundColor = [UIColor yellowColor];
    child3.frame = (CGRect) {
        .size = {
            .width = 100,
            .height = 100,
        }
    };
    
    [child2 addSubview:child3];
    [root addSubview:child1];
    [root addSubview:child2];
    [root yg_applyLayout];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
