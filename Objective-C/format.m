//
//  format.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/26.
//

#import <Foundation/Foundation.h>

@interface Format : NSObject
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
@end

@implementation Format

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float num1 = [a floatValue];
    float num2 = [b floatValue];
    float product = num1 * num2;
    return [NSNumber numberWithFloat:product];
}


@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSNumber *a = [NSNumber numberWithFloat:9.0];
//        NSNumber *b = [NSNumber numberWithFloat:2.3];
//        
//        Format *format = [[Format alloc]init];
//        NSNumber *result = [format multiplyA:a withB:b];
//        NSString *resultString = [result stringValue];
//        NSLog(@"The product is:%@", resultString);
//        
//    }
//    return 0;
//}
