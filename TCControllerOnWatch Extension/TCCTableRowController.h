//
//  TCCTableRowController.h
//  TapticEngineController
//
//  Created by Peng on 8/10/15.
//  Copyright © 2015 Peng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface TCCTableRowController : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceButton *playTapticEngineBtn;

@property (assign, nonatomic) WKHapticType hapticType;

@end
