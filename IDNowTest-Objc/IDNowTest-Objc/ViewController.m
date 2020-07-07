//
//  ViewController.m
//  IDNowTest-Objc
//
//  Created by Taras Chernyshenko on 2/24/20.
//  Copyright © 2020 Salon Software. All rights reserved.
//

#import "ViewController.h"
#import <IDNowSDKCore/IDNowSDKCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    void (^idnowResultListener)(enum IdentResult identResult, NSString * _Nonnull) = ^(enum IdentResult result, NSString* message) {
        NSLog( @"SDK finished with result %ld", (long)result);

        if (result == IdentResultERROR) {
            NSLog( @"SDK finished with error %@", message);
        }

        if( result == IdentResultFINISHED ) {
            NSLog( @"SDK finished successfully %@", message);
        }
    };

    [[IDNowSDK shared] startWithToken:@"CRM-EXVQP" preferredLanguage:@"en" fromViewController:self listener:idnowResultListener];

}
@end
