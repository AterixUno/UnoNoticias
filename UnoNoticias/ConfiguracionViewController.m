//
//  ConfiguracionViewController.m
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ConfiguracionViewController.h"
#import "UnoNoticiasAppDelegate.h"
#import "MenuView.h"

@implementation ConfiguracionViewController
@synthesize imgDrag;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        menu = [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] menu];
        
    }
    return self;
}

-(id) init{

    self = [super initWithNibName:@"ConfiguracionViewController" bundle:[NSBundle mainBundle]];
    if (self) {
        menu = [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] menu];
    }
    return self;
    
}

-(void) awakeFromNib{
    [super awakeFromNib];
    
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

}

#pragma mark - View lifecycle

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    UIPanGestureRecognizer *drag = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drag:)];
    [drag setMaximumNumberOfTouches:1];
    [drag setMinimumNumberOfTouches:1];
    [imgDrag addGestureRecognizer:drag];
    [drag release];
    
    [self.view addSubview:menu];
    
    

}

- (void)viewDidUnload
{
    [self setImgDrag:nil];
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	//return YES;
    return interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (IBAction)goBack:(id)sender {
    [menu removeFromSuperview];
    [self dismissModalViewControllerAnimated:YES];
}

-(void)drag:(UIPanGestureRecognizer *) sender
{
    
    CGPoint point;
    float velocidad;
    static CGPoint start;
    
    if ([sender state] == UIGestureRecognizerStateBegan)
    {
        start = [[sender view] center];
        [imgDrag setCenter:start];
        [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];
    }
    
    point = [sender translationInView:[sender view]];
    point.x = start.x;
    point.y += start.y;
    
    if ([sender state] == UIGestureRecognizerStateChanged)
        
    {
        [imgDrag setCenter:point];
        [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];
    }
    
    if ([sender state] == UIGestureRecognizerStateEnded)
    {
        
        velocidad = [sender velocityInView:[sender view]].y;
        
        if (velocidad < -1000){
            point.y = imgDrag.frame.size.height / 2.0;
        } 
        
        else if (velocidad > 1000){        
            point.y = 748 - imgDrag.frame.size.height/2.0;        
        }
        
        else if (point.y < 374){
            point.y = imgDrag.frame.size.height / 2.0;
        }
        
        else{
            point.y = 748 - imgDrag.frame.size.height/2.0; 
        }
        
        [UIView animateWithDuration:0.4 animations:^{
            [imgDrag setCenter:point];
            [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];    
        }];
        
    }
}

-(void) dealloc{

    [imgDrag release];
    imgDrag = nil;
    [super dealloc];
}
@end
