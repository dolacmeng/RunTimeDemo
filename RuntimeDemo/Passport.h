//
//  Passport.h
//  RuntimeDemo
//
//  Created by pconline on 2016/12/1.
//  Copyright © 2016年 pconline. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Passport : NSObject

+ (id)sharedPassport;

@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *phone;
@property(nonatomic,strong) NSDate *loginDate;
@property(nonatomic,assign) NSNumber *age;

@end
