//
//  Passport.m
//  RuntimeDemo
//
//  Created by pconline on 2016/12/1.
//  Copyright © 2016年 pconline. All rights reserved.
//

#import "Passport.h"
#import <objc/runtime.h>

@implementation Passport

@dynamic name,phone,loginDate,age;

+ (id)sharedPassport {
    static dispatch_once_t once;
    static id instance;
    dispatch_once(&once, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (BOOL)resolveInstanceMethod:(SEL)selector{
    NSString *selectorString = NSStringFromSelector(selector);
    if ([selectorString hasPrefix:@"set"]) {
        class_addMethod(self,
                        selector,
                        (IMP)autoDictionarySetter,
                        "v@:@");
    }else{
        class_addMethod(self,
                        selector,
                        (IMP)autoDictionaryGetter,
                        "@@:");
    }
    
    return YES;
}

id autoDictionaryGetter(id self,SEL _cmd){
    NSString *key = NSStringFromSelector(_cmd);
    
    NSUserDefaults *data = [NSUserDefaults standardUserDefaults];
    return [data objectForKey:key];
}

void autoDictionarySetter(id self, SEL _cmd, id value){
    NSString *selectorString = NSStringFromSelector(_cmd);
    NSMutableString *key = [selectorString mutableCopy];
    
    [key deleteCharactersInRange:NSMakeRange(key.length-1, 1)];
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    NSString *lowercaseFirstChar = [[key substringToIndex:1] lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowercaseFirstChar];
    
    NSUserDefaults *data = [NSUserDefaults standardUserDefaults];
    if(value){
        [data setObject:value forKey:key];
    }else{
        [data setObject:value forKey:key];
    }
}



@end
