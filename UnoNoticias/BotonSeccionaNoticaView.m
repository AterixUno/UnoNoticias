//
//  BotonSeccionaNoticaView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 13/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "BotonSeccionaNoticaView.h"

@implementation BotonSeccionaNoticaView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente{
    self = [super initWithFrame:frame];
    if (self){
    
        if (strFuente || [strFuente isEqualToString:@""]){
            lblFuente = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 20)];
            [lblFuente setText:strFuente];
            [lblFuente setTextAlignment:UITextAlignmentCenter];
            [self addSubview:lblFuente];
        }
        
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect{

    [super drawRect:rect];

}

-(void) awakeFromNib{

}

-(void) dealloc{
    [super dealloc];
}


@end
