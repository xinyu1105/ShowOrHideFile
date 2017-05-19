//
//  ViewController.m
//  ShowOrHideFile
//
//  Created by pengjiaxin on 2017/5/19.
//  Copyright © 2017年 pengjiaxin. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
// 显示文件
- (IBAction)showAction:(id)sender {
    [[NSTask launchedTaskWithLaunchPath:@"/bin/sh" arguments:@[@"-c", @"defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder"]] waitUntilExit] ;
}
//隐藏文件
- (IBAction)hideFile:(id)sender {
    [[NSTask launchedTaskWithLaunchPath:@"/bin/sh" arguments:@[@"-c", @"defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"]] waitUntilExit] ;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
