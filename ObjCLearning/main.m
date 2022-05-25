//
//  main.m
//  ObjCLearning
//
//  Created by Shahriar Nasim Nafi on 25/5/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        // MARK: - NSString
        NSLog(@"Hello, World!");
        NSString *nothing = nil;
        NSLog(@"Location of all nil always same: %p", nothing);
        
        NSString *quote = @"Dogs have masters while cats have stuffs";
        NSLog(@"Location of quote %p", quote);
        NSLog(@"Size of string %d", (int)[quote length]);
        NSLog(@"Character at 5: %c", [quote characterAtIndex:5]);
        
        NSString *name = @"SNNafi";
        NSString *myName = [NSString stringWithFormat:@" - %@", name];
        NSLog(@"Name is %@", myName);
        
        const char *cString = [[name uppercaseString] UTF8String];
        NSLog(@"Plain old cstring - %s", cString);
        
        NSString *wQ = [quote stringByAppendingString:myName];
        NSLog(@"%@", wQ);
        
        NSRange searchResult = [wQ rangeOfString:@"SNNafi"];
        
        if (searchResult.location == NSNotFound) {
            NSLog(@"Not found SNNafi");
        } else {
            NSLog(@"SNNafi found at index %lu and length is %lu", searchResult.location, searchResult.length);
        }
        
        NSMutableString *mutable = [NSMutableString stringWithCapacity:50];
        [mutable appendFormat:@"Hello %@", @"SNNafi!"];
        [mutable appendString:@" How are you?"];
        
        NSLog(mutable);
        
        
        // MARK: - NSArray
        
        NSArray *fruits = @[@"Mango", @"Banana"];
        NSLog(@"At index 1: %@", fruits[0]);
        NSLog(@"All items: %@", fruits);
        NSLog(@"Total items %d", (int) [fruits count]);
        
        BOOL contains = [fruits containsObject:@"Mango"];
        
        if (contains == YES) {
            NSLog(@"Found Mango");
        } else {
            NSLog(@"Not found Mango");
        }
        
        NSMutableArray *languages = [NSMutableArray arrayWithCapacity:10];
        [languages addObject:@"C"];
        [languages addObject:@"C++"];
        [languages addObject:@"Haskell"];
        [languages addObject:@"Java"];
        [languages addObject:@"Swift"];
        [languages addObject:@"Objective C"];
        
        [languages insertObject:@"Assembly" atIndex:0];
        [languages removeObject:@"Haskell"];
        
        NSLog(@"Programming Langiages %@", languages);
        
    }
    return 0;
}
