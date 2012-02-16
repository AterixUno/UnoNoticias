//
//  BotonSeccionView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 16/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "BotonSeccionView.h"
#import "Constantes.h"

@implementation BotonSeccionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        imgSeccion = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, frame.size.height)];
        [imgSeccion setContentMode:UIViewContentModeCenter];
        [imgSeccion setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:imgSeccion];
    
        lblSeccion = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, frame.size.width - 50, frame.size.height)];
        [lblSeccion setText:@""];
        [lblSeccion setFont:[Constantes Helvetica67MediumCondensed:25]];
        [lblSeccion setTextColor:[UIColor blackColor]];
        [self addSubview:lblSeccion];
        
        chbCheck = [[CheckBoxView alloc] initWithFrame:CGRectMake(frame.size.width - 50, 0, 50, frame.size.height)];
        [self addSubview:chbCheck];
        
    }
    return self;
}


-(void) setImgSeccion:(UIImage *) seccion{
    [imgSeccion setImage:seccion];
}
-(void) setlblSeccion:(NSString *) seccion{
    [lblSeccion setText:seccion];
}

-(void) dealloc{
    [imgSeccion release];
    imgSeccion = nil;
    [lblSeccion release];
    lblSeccion = nil;
    [chbCheck release];
    chbCheck = nil;
    [super dealloc];
    
}

@end
