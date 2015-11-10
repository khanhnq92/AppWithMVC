//
//  DataManager.h
//  ExampleWithMVC
//
//  Created by Huy Quang Ngo on 11/10/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
@property(nonatomic,strong)NSArray* data;
+(instancetype)getSingleton;
@end
