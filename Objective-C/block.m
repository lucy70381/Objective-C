//
//  block.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/26.
//

#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)();

@interface BlockClass: NSObject
@end

@implementation BlockClass

- (void)performActionWithCompletion: (CompletionBlock) completionBlock {
    NSLog(@"Action performed");
    completionBlock();
}

@end


void (^simpleBlock)(void)= ^{
    NSLog(@"simpleBlock");
};

double (^multiplyTwoValues)(double, double) = ^(double firstValue, double secondValue) {
    return firstValue * secondValue;
};

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        simpleBlock();
//        
//        double result;
//        result = multiplyTwoValues(3.5, 9);
//        NSLog(@"MultiplyTwoValues is: %f", result);
//        
//        BlockClass *blockClass = [[BlockClass alloc]init];
//        [blockClass performActionWithCompletion:^{
//            NSLog(@"Completion is called to intimate action is performed.");
//        }];
//        
//    }
//    return 0;
//}
