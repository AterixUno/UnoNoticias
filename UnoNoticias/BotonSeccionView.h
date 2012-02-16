//
//  BotonSeccionView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 16/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CheckBoxView.h"

@interface BotonSeccionView : UIView{
    
    UIImageView *imgSeccion;
    UILabel *lblSeccion;
    CheckBoxView *chbCheck;
}

-(void) setImgSeccion:(UIImage *) seccion;
-(void) setlblSeccion:(NSString *) seccion;

@end
