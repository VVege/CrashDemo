//
//  ZombieMaker.m
//  CrashDemo
//
//  Created by 周智伟 on 2020/8/18.
//  Copyright © 2020 vege. All rights reserved.
//

#import "ZombieMaker.h"

@interface ZombieObject : NSObject
@property(nonatomic, assign)int def;
@end

@implementation ZombieObject

@end

@interface ZombieMaker ()
@property(nonatomic, assign)ZombieObject *object;
@end

@implementation ZombieMaker
- (instancetype)init
{
    self = [super init];
    if (self) {
        _object = [[ZombieObject alloc]init];
    }
    return self;
}

- (void)zombie {
    printf("%s", self.object.def);
}
@end

