//
//  CheckBoxView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 15/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "CheckBoxView.h"

@interface CheckBoxView (Metodos)
-(UIImage *) imagenSeleccionada:(BOOL) seleccionada;
@end

@implementation CheckBoxView
@synthesize estaSeleccionado;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        estaSeleccionado = TRUE;
        [self setContentMode:UIViewContentModeCenter];
        [self setImage:[self imagenSeleccionada:estaSeleccionado]];
        [self setUserInteractionEnabled:TRUE];
        [self setContentMode:UIViewContentModeCenter];
        [self setBackgroundColor:[UIColor clearColor]];
        
    }
    return self;
}

-(void) awakeFromNib{
    estaSeleccionado = TRUE;
    [self setContentMode:UIViewContentModeCenter];
    [self setImage:[self imagenSeleccionada:estaSeleccionado]];
    [self setUserInteractionEnabled:TRUE];
    [self setContentMode:UIViewContentModeCenter];
}

-(UIImage *) imagenSeleccionada:(BOOL)seleccionada{
    
    UIImage *imagenCheckBox;
    
    if (seleccionada){
        imagenCheckBox = [UIImage imageNamed:@"checkin.png"];
    }
    
    else{
    
        imagenCheckBox = [UIImage imageNamed:@"checkout.png"];
        
    }
    
    return imagenCheckBox;
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    estaSeleccionado = !estaSeleccionado;
    [self setImage:[self imagenSeleccionada:estaSeleccionado]];
}

-(void) dealloc{
    [super dealloc];
}

@end
