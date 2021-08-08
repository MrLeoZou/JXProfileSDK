#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "JXProfileViewController.h"
#import "JXProfileSDK.h"
#import "JXProfileService.h"
#import "JXProfileManager.h"
#import "JXProfileModel.h"

FOUNDATION_EXPORT double JXProfileSDKVersionNumber;
FOUNDATION_EXPORT const unsigned char JXProfileSDKVersionString[];

