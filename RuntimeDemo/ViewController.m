//
//  ViewController.m
//  RuntimeDemo
//
//  Created by JackXu on 2016/12/1.
//  Copyright © 2016年 pconline. All rights reserved.
//

#import "ViewController.h"
#import "Passport.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
//    [def setObject:@"JackXu" forKey:@"UserName"];
//    [def setObject:@(YES) forKey:@"Sex"];
//    [def setObject:[[NSDate alloc] init] forKey:@"LoginDate"];
    
    
//    [[Passport sharedPassport] setName:@"Jack"];
//    NSString *name = [[Passport sharedPassport] name];
//    NSLog(@"name:%@",name);
    
    
    [[Passport sharedPassport] setName:@"Jack"];
    [[Passport sharedPassport] setPhone:@"18888888888"];
    [[Passport sharedPassport] setAge:@(23)];
    [[Passport sharedPassport] setLoginDate:[[NSDate alloc] init]];
    
    NSLog(@"%@",[[Passport sharedPassport] name]);
    NSLog(@"%@",[[Passport sharedPassport] phone]);
    NSLog(@"%@",[[Passport sharedPassport] age]);
    NSLog(@"%@",[[Passport sharedPassport] loginDate]);

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
