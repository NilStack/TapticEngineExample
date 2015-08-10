//
//  TCCTableRowController.m
//  TapticEngineController
//
//  Created by Peng on 8/10/15.
//  Copyright © 2015 Peng. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import "TCCTableRowController.h"

@implementation TCCTableRowController

- (IBAction)playTapticEngine
{
    WKInterfaceDevice *device = [WKInterfaceDevice currentDevice];
    switch (self.hapticType) {
        case WKHapticTypeNotification:
            [device playHaptic:WKHapticTypeNotification];
            NSLog(@"playHaptic:WKHapticTypeNotification");
            break;
        case WKHapticTypeDirectionUp:
            [device playHaptic:WKHapticTypeDirectionUp];
            NSLog(@"playHaptic:WKHapticTypeDirectionUp");
            break;
        case WKHapticTypeDirectionDown:
            [device playHaptic:WKHapticTypeDirectionDown];
            NSLog(@"playHaptic:WKHapticTypeDirectionDown");
            break;
        case WKHapticTypeSuccess:
            [device playHaptic:WKHapticTypeSuccess];
            NSLog(@"playHaptic:WKHapticTypeSuccess");
            break;
        case WKHapticTypeFailure:
            [device playHaptic:WKHapticTypeFailure];
            NSLog(@"playHaptic:WKHapticTypeFailure");
            break;
        case WKHapticTypeRetry:
            [device playHaptic:WKHapticTypeRetry];
            NSLog(@"playHaptic:WKHapticTypeRetry");
            break;
        case WKHapticTypeStart:
            [device playHaptic:WKHapticTypeStart];
            NSLog(@"playHaptic:WKHapticTypeStart");
            break;
        case WKHapticTypeStop:
            [device playHaptic:WKHapticTypeStop];
            NSLog(@"playHaptic:WKHapticTypeStop");
            break;
        case WKHapticTypeClick:
            [device playHaptic:WKHapticTypeClick];
            NSLog(@"playHaptic:WKHapticTypeClick");
            break;
        default:
            break;
    }
}

@end
