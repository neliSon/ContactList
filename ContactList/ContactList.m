//
//  ContactList.m
//  ContactList
//
//  Created by Nelson Chow on 2016-03-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init {
    self = [super init];
    if (self) {
        self.contacts = [NSMutableArray array];
    }
    return self;
}

//  method to add contact to a
- (void) addContact: (Contact *) newContact {
    [self.contacts addObject: newContact];
}

- (void) displayAllContacts {
    for (int i = 0; i < self.contacts.count; ++i) {
//        Contact *c =self.contacts[i];
        NSLog(@"%i: <%@> ()", i , ((Contact*)self.contacts[i]).fullName);     // format as #: <full name> ()
    }
}
@end
