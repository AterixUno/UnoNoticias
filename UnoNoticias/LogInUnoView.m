//
//  LogInUnoView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 17/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "LogInUnoView.h"

@implementation LogInUnoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        
        UIImageView *imgLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logochico.png"]];
        [self addSubview:imgLogo];
        [imgLogo release];
        imgLogo = nil;
        
        
    }
    
    return self;
}

-(void) dealloc{
    [super dealloc];
}

@end
