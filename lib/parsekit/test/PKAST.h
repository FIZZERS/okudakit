//  Copyright 2010 Todd Ditchendorf
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import <Foundation/Foundation.h>

@class PKToken;

@interface PKAST : NSObject

+ (PKAST *)ASTWithToken:(PKToken *)tok;

- (id)initWithToken:(PKToken *)tok;

- (int)type;

- (void)addChild:(PKAST *)c;
- (BOOL)isNil;

- (NSString *)treeDescription;

@property (nonatomic, retain) PKToken *token;
@property (nonatomic, retain) NSMutableArray *children;
@end
