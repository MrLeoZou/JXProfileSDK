//
//  JXProfileManager.m
//  JXProfileSDK
//
//  Created by roczp on 2021/8/8.
//

#import "JXProfileManager.h"
#import "JXProfileService.h"
#import <JXBifrost/BifrostHeader.h>

@interface JXProfileManager ()<BifrostModuleProtocol,JXProfileProtocol>

@end

@implementation JXProfileManager

+ (void)load {
    BFRegister(JXProfileProtocol);
}

- (void)setup {}

static JXProfileManager *manager = nil;
+ (JXProfileManager *)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[JXProfileManager alloc] init];
    });
    return manager;
}


- (void)changeLangue:(NSString * _Nullable)language completion:(void (^ _Nullable)(NSError * _Nullable, id _Nullable))completion {
    //TODO: 具体逻辑
}

- (void)getInfo:(void (^ _Nullable)(NSError * _Nullable, id _Nullable))completion {
    //TODO: 具体逻辑
    !completion?:completion(nil, @{@"data":@"testInfo"});
}

@end
