//
//  JXProfileViewController.m
//  JXProfileSDK
//
//  Created by roczp on 2021/8/8.
//

#import "JXProfileViewController.h"
#import <JXBifrost/BifrostHeader.h>
#import "JXProfileService.h"
#import <JXUserDataSDK/JXUserDataSDK.h>

@interface JXProfileViewController ()

@property (nonatomic, strong) NSDictionary *parameters;

@end

@implementation JXProfileViewController

+ (void)load {
    [Bifrost bindURL:kRouteProfilePage
           toHandler:^id _Nullable(NSDictionary * _Nullable parameters) {
        JXProfileViewController *vc = [[JXProfileViewController alloc] init];
        vc.parameters = parameters;
        return vc;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Profile";
    self.view.backgroundColor = UIColor.grayColor;
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"从JXUserData获取信息" message:[NSString stringWithFormat:@"userID:%@\nuserName:%@",[[JXUserDataManager sharedInstance] loginInfo].userID,[[JXUserDataManager sharedInstance] loginInfo].userName] preferredStyle:UIAlertControllerStyleAlert];
    [alertVC addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alertVC animated:YES completion:nil];
}


@end
