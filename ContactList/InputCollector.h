//
//  InputCollector.h
//  ContactList
//
//  Created by Nelson Chow on 2016-03-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

- (NSString *)inputForPrompt: (NSString *) promptString;

@end