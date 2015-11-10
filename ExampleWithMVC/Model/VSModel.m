//
//  VSModel.m
//  ExampleWithMVC
//
//  Created by Huy Quang Ngo on 11/10/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "VSModel.h"

@implementation VSModel
-(instancetype)initWithName:(NSString*)name andMeasure:(NSString*)measure andPhoto:(NSString*)photo{
    if (self=[super init]) {
        self.name=name;
        self.measure=measure;
        self.photo=[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",photo]];
        self.icon=[UIImage imageNamed:[NSString stringWithFormat:@"%@0.jpg",photo]];
    }
    return self;
}
@end
