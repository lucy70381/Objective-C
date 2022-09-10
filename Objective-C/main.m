//
//  main.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/25.
//

#import <Foundation/Foundation.h>


@interface SampleClass : NSObject
- (void)smapleMethod;
@end

@implementation SampleClass

- (void)sampleMethod {
    NSLog(@"Hello, world!\n");
}

- (int)max: (int)num1 addNum2: (int)num2 {
    return MAX(num1, num2);
}

@end


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        int a = 50;
//        int b = 28;
//        int res;
//        
//        SampleClass *sampleClass = [[SampleClass alloc]init];
//        [sampleClass sampleMethod];
//        res = [sampleClass max:a addNum2:b];
//        NSLog(@"Max value is: %d", res);
//        
//    }
//    return 0;
//}
