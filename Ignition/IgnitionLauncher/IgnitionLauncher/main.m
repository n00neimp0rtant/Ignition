//
//  main.m
//  IgnitionLauncher
//
//  Created by Adam Bell on 12/6/14.
//  Copyright (c) 2014 Adam Bell. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <PrivateHeaders.h>

#define postNotification(notification) CFNotificationCenterPostNotificationWithOptions(CFNotificationCenterGetDarwinNotifyCenter(), \
CFSTR(notification),  \
NULL,  \
NULL, \
kCFNotificationDeliverImmediately);

int main(int argc, char * argv[]) {
    @autoreleasepool {
        /*
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSArray *tweakNames = @[@"ISXLoader",
                                @"InteractiveMessageNotifications"];
        
        if ([fileManager fileExistsAtPath:CARPLAY_ACTIVE_FILE_PATH]) {
            // Disable CarPlay
            NSError *error;
            [fileManager removeItemAtPath:CARPLAY_ACTIVE_FILE_PATH error:&error];
            if (error) {
                NSLog(@"CARPLAY_ACTIVATOR_ERROR: %@", error);
            } else {
                for (NSString *eachName in tweakNames) {
                    NSError *fileMoveError;
                    
                    if ([fileManager fileExistsAtPath:[NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.dylib", eachName]]) {
                        NSLog(@"CARPLAY: file exists at %@, disabling now", [NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.dylib", eachName]);
                        
                        [fileManager moveItemAtPath:[NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.dylib", eachName]
                                             toPath:[NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.carplaydisabled", eachName]
                                              error:&fileMoveError];
                        
                        if (fileMoveError) {
                            NSLog(@"CARPLAY_ACTIVATOR_ERROR: %@", fileMoveError);
                        }
                    } else {
                        NSLog(@"CARPLAY: file does NOT exist at %@", [NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.dylib", eachName]);
                    }
                }
            }
        } else {
            BOOL enabledCarPlay = [fileManager createFileAtPath:CARPLAY_ACTIVE_FILE_PATH contents:[@"canhaz?" dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
            if (!enabledCarPlay) {
                NSLog(@"CARPLAY_ACTIVATOR_ERROR: Unable to create CarPlay Activator file.");
            } else {
                for (NSString *eachName in tweakNames) {
                    NSError *fileMoveError;
                    
                    if ([fileManager fileExistsAtPath:[NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.carplaydisabled", eachName]]) {
                        NSLog(@"CARPLAY: file exists at %@, enabling now", [NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.carplaydisabled", eachName]);
                        
                        [fileManager moveItemAtPath:[NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.carplaydisabled", eachName]
                                             toPath:[NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.dylib", eachName]
                                              error:&fileMoveError];
                        
                        if (fileMoveError) {
                            NSLog(@"CARPLAY_ACTIVATOR_ERROR: %@", fileMoveError);
                        }
                    } else {
                        NSLog(@"CARPLAY: file does NOT exist at %@", [NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.carplaydisabled", eachName]);
                    }
                }
            }
        }
        
        return system("killall backboardd");*/
        
        postNotification("ca.adambell.ignition.carplaytoggled");
        
        return 0;
    }
}
