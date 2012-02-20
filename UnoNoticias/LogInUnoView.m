//
//  LogInUnoView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 17/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "LogInUnoView.h"
#import "CellLogInView.h"
#import "Constantes.h"
@implementation LogInUnoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        
        UIImageView *imgLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logochico.png"]];
        [self addSubview:imgLogo];
        [imgLogo release];
        imgLogo = nil;
        
        UILabel *lblTitulo = [[UILabel alloc] initWithFrame:CGRectMake(80, 0, 300, 40)];
        [lblTitulo setText:@"LOGIN A UNO NOTICIAS"];
        [lblTitulo setBackgroundColor:[UIColor clearColor]];
        [lblTitulo setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
        [lblTitulo setTextAlignment:UITextAlignmentLeft];
        [lblTitulo setFont:[Constantes Helvetica77BoldCondensed:31]];
        [self addSubview:lblTitulo];
        [lblTitulo release];
        lblTitulo = nil;
        
        tableLogin = [[UITableView alloc] initWithFrame:CGRectMake(0, 50, frame.size.width, 150) style:UITableViewStyleGrouped];
        [tableLogin setBackgroundColor:[UIColor whiteColor]];
        [tableLogin setDelegate:self];
        [tableLogin setDataSource:self];
        [self addSubview:tableLogin];
        
        UIButton *btnListo = [[UIButton alloc] initWithFrame:CGRectMake(frame.size.width - 103,200 , 103, 42)];
        [btnListo setImage:[UIImage imageNamed:@"botonListo"] forState:UIControlStateNormal];
        [self addSubview:btnListo];
        [btnListo release];
        btnListo = nil;
        
    }
    
    return self;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *uniqueIdentifier = @"myCellLogin";
    CellLogInView  *cell = nil;
    
    cell = (CellLogInView *) [tableLogin dequeueReusableCellWithIdentifier:uniqueIdentifier];

    if(!cell){
        
        cell = [[CellLogInView alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:uniqueIdentifier];
        
    }
    
    switch ([indexPath row]) {
        case 0:
            [cell setTextoEtiquetaCampo:@"Usuario: "];
            [cell setTextoDefaultCampo:@"Escribe tu usuario"];
            [cell setTipoContrasena:FALSE];
            break;
        case 1:
            [cell setTextoEtiquetaCampo:@"Contraseña: "];
            [cell setTextoDefaultCampo:@"Escribe tu contraseña"];
            [cell setTipoContrasena:TRUE];
            break;
        default:
            break;
    }
    

    return cell;

    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    [tableView setBackgroundColor:[UIColor redColor]];
    return 2;
}
 
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return false;
}

/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *strTitulo;
    switch (section) {
        case 0:
            strTitulo = @"Cero";
            break;
        case 1:
            strTitulo = @"Uno";
            break;
        default:
            break;
    }
    
    return strTitulo;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    NSString *strTitulo;
    switch (section) {
        case 0:
            strTitulo = @"FoosterCero";
            break;
        case 1:
            strTitulo = @"FoosterUno";
            break;
        default:
            break;
    }
    
    return strTitulo;
}
 */


-(void) dealloc{
    
    [tableLogin release];
    tableLogin = nil;
    
    
    
    [super dealloc];
}

@end
