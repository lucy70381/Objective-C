//
//  string.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/27.
//

#import <Foundation/Foundation.h>

void stringFunction() {
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3;
    
    NSLog(@"大寫 String : %@", [str1 uppercaseString]);
    
    str3 = [str1 stringByAppendingString:str2];
    NSLog(@"組合 string:  %@", str3);
    NSLog(@"長度 string:  %d", [str3 length]);
    
    str3 = [[NSString alloc] initWithFormat:@"%@ %@", str1, str2];
    NSLog(@"Using initWithFormat: %@", str3);
}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        stringFunction();
//    }
//    return 0;
//}
