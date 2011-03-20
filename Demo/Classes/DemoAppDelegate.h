//
//  DemoAppDelegate.h
//  Demo
//
//  Created by Marlon Andrade on 20/03/11.
//  Copyright 2011 Traf Sistemas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

