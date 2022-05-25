//
//  main.m
//  ObjCLearning
//
//  Created by Shahriar Nasim Nafi on 25/5/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *nothing = nil;
        NSLog(@"Location of all nil always same: %p", nothing);
        
        NSString *quote = @"Dogs have masters while cats have stuffs";
        NSLog(@"Location of quote %p", quote);
        NSLog(@"Size of string %d", (int)[quote length]);
        NSLog(@"Character at 5: %c", [quote characterAtIndex:5]);
        
        NSString *name = @"SNNafi";
        NSString *myName = [NSString stringWithFormat:@"- %@", name];
        NSLog(@"Name is %@", myName);
        
        const char *cString = [[name uppercaseString] UTF8String];
        NSLog(@"Plain old cstring - %s", cString);
    }
    return 0;
}
