//
//  struct.m
//  Objective-C
//
//  Created by 楊惠如 on 2021/5/27.
//

#import <Foundation/Foundation.h>

struct Books {
    NSString *title;
    NSString *author;
    NSString *subject;
    int book_id;
};

void printBookInfo(struct Books book) {
    NSLog(@"Book title : %@\n", book.title);
    NSLog(@"Book author : %@\n", book.author);
    NSLog(@"Book subject : %@\n", book.subject);
    NSLog(@"Book book_id : %d\n", book.book_id);
}

void printBookInfo2(struct Books *book) {
    NSLog(@"Book title : %@\n", book->title);
    NSLog(@"Book author : %@\n", book->author);
    NSLog(@"Book subject : %@\n", book->subject);
    NSLog(@"Book book_id : %d\n", book->book_id);
}

void structFunction() {
    struct Books book1, book2;
    
    book1.title = @"Objective-C程式設計";
    book1.author = @"Yiibai";
    book1.subject = @"Objective-C程式設計教學";
    book1.book_id = 81234566;
    
    book2.title = @"Java程式設計";
    book2.author = @"Maxsu";
    book2.subject = @"JavaC程式設計教學";
    book2.book_id = 813283488;
    
    printBookInfo(book1);
    printBookInfo(book2);
    
    printBookInfo2(&book1);
    printBookInfo2(&book2);
}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        structFunction();
//    }
//    return 0;
//}
