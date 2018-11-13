//
//  NSObject+CD_Chain.m
//  SIGOODS
//
//  Created by LCD on 2018/8/10.
//  Copyright © 2018年 erazar. All rights reserved.
//

#import "NSObject+CD_Chain.h"

@implementation NSObject (CD_Chain)

@end



@implementation NSLayoutConstraint (CD_Chain)
- (NSLayoutConstraint * (^)(CGFloat ))cd_constant{
    return ^(CGFloat a){
        self.constant = a;
        return self;
    };
}
@end


@implementation NSMutableDictionary (CD_Chain)

@end
