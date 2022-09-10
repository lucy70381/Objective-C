//
//  array.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/26.
//

#import <Foundation/Foundation.h>

//如果省略陣列的大小，則會建立一個足以容納初始化的陣列。
int array[5] = {1000, 2, 3, 17, 50};

int a[3][4] = {
   {0, 1, 2, 3} ,   /*  第0行索引的初始值設定項  */
   {4, 5, 6, 7} ,   /*  第1行索引的初始值設定項  */
   {8, 9, 10, 11}   /*  第2行索引的初始值設定項  */
};

int b[3][4] = {0,1,2,3,4,5,6,7,8,9,10,11};

@interface ArrayClass : NSObject;

-(double)myFunction:(int *) arr andSize:(int) size;

- (int *) getRandom;

- (void)arrayPointer;

@end

@implementation ArrayClass

//將陣列傳遞給函式
- (double)myFunction:(int *) arr andSize:(int) size {
    int i;
    double sum = 0;
    double svg;
    
    for ( i = 0; i < size; i++) {
        sum += arr[i];
    }
    
    svg = sum / size;
    return svg;
}

//從函式返回陣列
- (int *) getRandom {
    static int r[10];
    int i;
    
    srand((unsigned)time(NULL));
    for (i = 0; i < 10; i++) {
        r[i] = rand();
        NSLog(@"r[%d] = %d\n", i, r[i]);
    }
    return r;
}

- (void)arrayPointer {
    double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    double *p;
    int i;
    
    p = balance;
    for (i = 0; i < 5; i++) {
        NSLog(@"*(p + %d) : %f", i, *(p + i));
    }
    
    for (i = 0; i < 5; i++) {
        NSLog(@"*(balance + %d) : %f", i, *(balance + i));
    }
}


@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        int n[10];
//        int i, j;
//        
//        for (i = 0; i < 10; i++) {
//            n[i] = 100 + i;
//        }
//        
//        for (j = 0; j < 10; j++) {
//            NSLog(@"Element[%d] = %d",j ,n[j]);
//        }
//        
//        //將陣列傳遞給函式
//        double res;
//        ArrayClass *arrayClass = [[ArrayClass alloc]init];
//        res = [arrayClass myFunction:array andSize:5];
//        NSLog(@"Average value is: %f", res);
//        
//        //從函式返回陣列
//        [arrayClass getRandom];
//        
//        //指向陣列的指標
//        [arrayClass arrayPointer];
//        
//    }
//    return 0;
//}
