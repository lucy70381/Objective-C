//
//  pointer.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/26.
//

#import <Foundation/Foundation.h>

@interface PointerClass : NSObject;

-(void)myFunction;

-(void)myFunction2;

-(void)ptrMethod;

-(void)addressMethod;

@end

@implementation PointerClass

- (void)myFunction {
    int var1;
    char var2[10];
    
    NSLog(@"Address of var1 variable: %x", &var1);
    NSLog(@"Address of var2 variable: %x", &var2);
}

- (void)myFunction2 {
    int var = 20;
    int *ip = NULL;
    ip = &var;
    
    NSLog(@"Address of var variable: %x\n", &var  );

   /* 儲存在指標變數中的地址 */
   NSLog(@"Address stored in ip variable: %x\n", ip );

   /* 使用指標存取該值 */
   NSLog(@"Value of *ip variable: %d\n", *ip );
}

- (void)ptrMethod {
    const int MAX = 3;
    int  var[] = {10, 100, 200};
      int  i, *ptr;

      /* 在指標中儲存陣列地址*/
      ptr = var;
      for ( i = 0; i < MAX; i++) {
         NSLog(@"Address of var[%d] = %x\n", i, ptr );
         NSLog(@"Value of var[%d] = %d\n", i, *ptr );

         /* 移動到下一個位置 */
         ptr++;
      }
}

- (void)addressMethod {
    const int MAX = 3;
    int  var[] = {10, 100, 200};
    int i, *ptr[MAX];

    for ( i = 0; i < MAX; i++) {
     ptr[i] = &var[i];   /* 分配整數的地址. */
    }
    for ( i = 0; i < MAX; i++) {
     NSLog(@"Value of var[%d] = %d\n", i, *ptr[i] );
    }
}
@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        PointerClass *pointerClass = [[PointerClass alloc]init];
//        
//        [pointerClass myFunction];
//        
//        [pointerClass myFunction2];
//        
//        [pointerClass ptrMethod];
//        
//        [pointerClass addressMethod];
//        
//    }
//    return 0;
//}
