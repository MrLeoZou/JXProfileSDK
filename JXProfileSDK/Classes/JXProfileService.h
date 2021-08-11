//
//  JXProfileService.h
//  JXProfileSDK
//
//  Created by roczp on 2021/8/8.
//

#ifndef JXProfileService_h
#define JXProfileService_h

#pragma mark - Notifications

static NSNotificationName _Nonnull kNotificationProfilePageDidAppear = @"kNotificationProfilePageDidAppear";

#pragma mark - URL routers

static NSString * _Nonnull const kRouteProfilePage = @"//Profile/Profile_page";

#pragma mark - Model Protocols

@protocol JXProfileInfoProtocol <NSObject>

- (NSString *_Nullable)name;
- (NSString *_Nullable)avatar;

@end

#pragma mark - Manager Protocol

@protocol JXProfileProtocol <NSObject>

- (void)getInfo:(void(^_Nullable)(NSError * _Nullable error, id _Nullable data))completion;

- (void)changeLangue:(NSString *_Nullable)language
          completion:(void(^_Nullable)(NSError * _Nullable error, id _Nullable data))completion;

@end

#endif /* JXProfileService_h */
