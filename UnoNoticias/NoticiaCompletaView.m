//
//  NoticiaCompletaView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "NoticiaCompletaView.h"
#import "Constantes.h"

@implementation NoticiaCompletaView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    
    }
    return self;
}

-(id) init{
    self = [super init];
    if (self){
        
        lblTipoNoticia =[[UILabel alloc] init];
        [lblTipoNoticia setText:@"INTERNACIONAL"];
        [lblTipoNoticia setFont:[Constantes HelveticaNue:21]];
        [lblTipoNoticia setTextColor:[UIColor redColor]];        
        [self addSubview:lblTipoNoticia];
        
    }
    
    return self;
}

-(void) actualizarVista{
    
    CGRect frame;
    
    frame = CGRectZero;
    frame.size.width = [self superview].frame.size.width;
    if (lblTipoNoticia){
        [lblTipoNoticia setFrame:CGRectMake(0, 0, frame.size.width/2, 20)];
        frame.origin.y+=20;
    }
    
    [self setFrame:CGRectMake(0, 0, [self superview].frame.size.width, frame.origin.y)];
    
}

-(void) dealloc{
    
    [lblTipoNoticia release];
    lblTipoNoticia = nil;
    [super dealloc]; 
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
}


@end
