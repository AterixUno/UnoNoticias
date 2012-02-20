//
//  CellLogInView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 20/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "CellLogInView.h"

@implementation CellLogInView

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        lblCampo = [[UILabel alloc] initWithFrame:CGRectMake(50, 2, 120, self.frame.size.height-2)];
        [lblCampo setText:@"Hola"];
        [lblCampo setBackgroundColor:[UIColor clearColor]];
        
        txtCampo = [[UITextField alloc] initWithFrame:CGRectMake(lblCampo.frame.size.width + lblCampo.frame.origin.x, 10, self.frame.size.width-lblCampo.frame.size.width, 31)];
        [txtCampo setBackgroundColor:[UIColor clearColor]];
        [txtCampo setClearButtonMode:UITextFieldViewModeWhileEditing];
        [self addSubview:lblCampo];
        [self addSubview:txtCampo];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:FALSE animated:animated];

    // Configure the view for the selected state
}

-(void) setTextoEtiquetaCampo:(NSString *) etiqueta{
    [lblCampo setText:etiqueta];
    
}
-(void) setTextoDefaultCampo:(NSString *) _default{
    [txtCampo setPlaceholder:_default];
}

-(void) setTipoContrasena:(BOOL) tipo{
    [txtCampo setSecureTextEntry:tipo];
}

-(void) dealloc{
    
    [lblCampo release];
    lblCampo = nil;
    
    
    [super dealloc];
    
}

@end
