//
//  ConfiguracionViewController.h
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SeccionesView;
@class RedesSocialesView;
@class LogInUnoView;

@interface ConfiguracionViewController : UIViewController
{

    SeccionesView *secciones;
    RedesSocialesView *redesSociales;
    LogInUnoView *logInUno;
}

- (IBAction)goBack:(id)sender;
- (IBAction)seccionesClic:(id)sender;
- (IBAction)redesClic:(id)sender;
- (IBAction)registroClic:(id)sender;
- (IBAction)loginClic:(id)sender;

@end
