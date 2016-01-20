//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    
    NSMutableArray *sequence = [[NSMutableArray alloc]init];;
    for (NSUInteger i = 0; i<index +1; i++) {
        if(i==0){
            [sequence addObject:@0];
        }else if (i==1) {
            [sequence addObject:@1];
        }else{
            NSNumber *s = [sequence objectAtIndex:i-2];
            NSNumber *s1 = [sequence objectAtIndex:i-1];
            NSUInteger sum = [s1 integerValue] + [s integerValue];
            NSNumber *numberSum = @(sum);
            [sequence addObject:numberSum];
        }
    }
    
    
    return sequence;
}

@end
