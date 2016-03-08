//
//  ContactList.h
//  ContactList
//
//  Created by Nelson Chow on 2016-03-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contacts;

- (void) addContact: (Contact *) newContact;
- (void) displayAllContacts;

@end
