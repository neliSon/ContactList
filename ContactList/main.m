//
//  main.m
//  ContactList
//
//  Created by Nelson Chow on 2016-03-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];


        while (YES) {
            
            InputCollector *inputCollector = [[InputCollector alloc] init];
            
            // display menu with a String and asks for input
            
            NSString *input = [inputCollector inputForPrompt:@"The menu: What would you like do next? \nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application > _"];
            
            if ([input isEqualToString:@"quit"]) {
                
                NSLog(@"Take it ez...");
                break;                           // if user wants to quit
                
            } else if ([input isEqualToString: @"new"]) {
                Contact *newContact = [[Contact alloc] init];
                
                NSString *nameInput = [inputCollector inputForPrompt:@"What is the full name of the contact you'd like to add? > _"];
                
                newContact.fullName = nameInput;    // stores String as contact name
                
                NSString *emailInput = [inputCollector inputForPrompt:@"What is the email address of the contact you'd like to add? > _"];
                
                newContact.email = emailInput;      // stores String as contact email
            
                [contactList addContact: newContact];   // add contacts to contact list
            } else if ([input isEqualToString: @"list"]) {
                [contactList displayAllContacts];
            }
        }
    }
    return 0;
}
