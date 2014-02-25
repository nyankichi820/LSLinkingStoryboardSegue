//
//  LSLinkedStoryboardSegue.m
//  LinkingStoryboard
//
//  Created by masafumi yoshida on 2014/02/25.
//  Copyright (c) 2014年 masafumi yoshida. All rights reserved.
//

#import "LSLinkedStoryboardSegue.h"

@implementation LSLinkedStoryboardSegue
- (void)perform {
    UIViewController *sourceViewController = (UIViewController *)self.sourceViewController;
    UIViewController *destinationViewController = (UIViewController *)self.destinationViewController;
    
    self.identifier;
    
    UIViewController  *controller;
    
    if(self.toStoryboard){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:self.id bundle:nil];
         if(self.toViewController){
    
           controller = [storyboard instantiateViewControllerWithIdentifier:self.toViewController];
            
        }
        else{
            controller = [storyboard instantiateInitialViewController];
            
        }
    }
    
    [sourceViewController.navigationController pushViewController:controller animated:YES];
    
}
@end
