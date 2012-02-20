//
//  CellLogInView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 20/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellLogInView : UITableViewCell{

    UILabel *lblCampo;
    UITextField *txtCampo;
    
}

-(void) setTextoEtiquetaCampo:(NSString *) etiqueta;
-(void) setTextoDefaultCampo:(NSString *) _default;
-(void) setTipoContrasena:(BOOL) tipo;

@end
