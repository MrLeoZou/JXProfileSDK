//
//  JXProfileModel.h
//  JXProfileSDK
//
//  Created by roczp on 2021/8/8.
//

#import <Foundation/Foundation.h>
#import "JXProfileService.h"

NS_ASSUME_NONNULL_BEGIN

@interface JXProfileModel : NSObject <JXProfileInfoProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *avatar;

@end

NS_ASSUME_NONNULL_END
