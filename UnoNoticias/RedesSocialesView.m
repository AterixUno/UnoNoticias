//
//  RedesSocialesView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 17/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "RedesSocialesView.h"
#import "Constantes.h"

@implementation RedesSocialesView

- (id)initWithFrame:(CGRect)frame
{
    
    UIImage *imgFacebook;
    UIImage *imgTwitter;
    UIImage *imgGoogle;
    UIImage *imgIn;
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *lblTitulo = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 45)];
        [lblTitulo setText:@"REDES SOCIALES"];
        [lblTitulo setTextColor:[UIColor grayColor]];
        [lblTitulo setFont:[Constantes Helvetica77BoldCondensed:31]];
        [lblTitulo setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblTitulo];
        
        imgFacebook = [UIImage imageNamed:@"facebookgrande.png"];
        imgTwitter = [UIImage imageNamed:@"twittergrande.png"];
        imgGoogle = [UIImage imageNamed:@"googlegrande.png"];
        imgIn = [UIImage imageNamed:@"linkedingrande.png"];
        
        btnFacebook = [[UIButton alloc] initWithFrame:CGRectMake(0, 45, imgFacebook.size.width, imgFacebook.size.height)];
        [btnFacebook setImage:imgFacebook forState:UIControlStateNormal];
        [self addSubview:btnFacebook];
        
        btnTwitter = [[UIButton alloc] initWithFrame:CGRectMake(imgFacebook.size.width + 5, 45, imgTwitter.size.width, imgTwitter.size.height)];
        [btnTwitter setImage:imgTwitter forState:UIControlStateNormal];
        [self addSubview:btnTwitter];
        
        btnGoogle = [[UIButton alloc] initWithFrame:CGRectMake(0, imgFacebook.size.height + 50, imgGoogle.size.width, imgGoogle.size.height)];
        [btnGoogle setImage:imgGoogle forState:UIControlStateNormal];
        [self addSubview:btnGoogle];
        
        btnIn = [[UIButton alloc] initWithFrame:CGRectMake(imgFacebook.size.width + 5, imgFacebook.size.height + 50, imgIn.size.width, imgIn.size.height)];
        [btnIn setImage:imgIn forState:UIControlStateNormal];
        [self addSubview:btnIn];

    }
    return self;
}

-(void) dealloc{
    
    [btnFacebook release];
    btnFacebook = nil;
    
    [btnTwitter release];
    btnTwitter = nil;
    
    [btnGoogle release];
    btnGoogle = nil;
    
    [btnIn release];
    btnIn = nil;
}
@end
