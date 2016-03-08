//
//  InputCollector.m
//  ContactList
//
//  Created by Nelson Chow on 2016-03-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

// asks for an input after a string
// stores input and returns it

- (NSString *) inputForPrompt:(NSString *)promptString {
    char userInput[255];
    
    NSLog(@"%@", promptString);
    fgets(userInput, 255, stdin);
    NSString *inputString = [[NSString stringWithUTF8String:userInput] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}

@end
