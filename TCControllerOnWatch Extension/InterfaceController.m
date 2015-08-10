//
//  InterfaceController.m
//  TCControllerOnWatch Extension
//
//  Created by Peng on 8/10/15.
//  Copyright © 2015 Peng. All rights reserved.
//

#import "InterfaceController.h"
#import "TCCTableRowController.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *hapticTypeTable;
@property (strong, nonatomic) NSArray *hapticTypes;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    self.hapticTypes = @[@"Notification", @"DirectionUp", @"DirectionDown", @"Success", @"Failure", @"Retry", @"Start", @"Stop", @"Click"];
    
    [self.hapticTypeTable setNumberOfRows:self.hapticTypes.count withRowType:@"TCCTableRowController"];
    [self.hapticTypes enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
         TCCTableRowController* row = [self.hapticTypeTable rowControllerAtIndex:idx];
        [row.playTapticEngineBtn setTitle:(NSString*)[self.hapticTypes objectAtIndex:idx]];
        row.hapticType = idx;
        
    }];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



