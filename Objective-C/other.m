//
//  other.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/27.
//

#import <Foundation/Foundation.h>

#define MAX_ARRAY_LENGTH 20
#undef  FILE_SIZE
#define FILE_SIZE 42

#ifndef MESSAGE
   #define MESSAGE "You wish!"
#endif

#ifdef DEBUG
   /* Your debugging statements here */
#endif

#define message_for(a, b)   \
    NSLog(@#a " and " #b ": We love you!")

#define tokenpaster(n) NSLog(@"token" #n " = %d", token##n );


void printInfo() {
    NSLog(@"File : %s", __FILE__);  //當前日期為「MMM DD YYYY」格式的字元文字
    NSLog(@"Date :%s\n", __DATE__ );    //當前時間作為「HH:MM:SS」格式的字元文字
    NSLog(@"Time :%s\n", __TIME__ );    //它包含當前檔案名作為字串文字
    NSLog(@"Line :%d\n", __LINE__ );    //它包含當前行號作為十進位制常數
    NSLog(@"ANSI :%d\n", __STDC__ );    //當編譯器符合ANSI標準時，定義為1
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        message_for(Carole, Debra);
        printInfo();
        
        int token34 = 40;
        tokenpaster(34);
        
        NSLog(@"Here is the message: %s\n", MESSAGE);
        
        
    }
    return 0;
}
