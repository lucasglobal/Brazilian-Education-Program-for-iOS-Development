//
//  AppDelegate.m
//  desafioApp3_maio_22
//
//  Created by LucasAndrade on 5/22/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "AppDelegate.h"
#import "PrincipalView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //criando a scrollview
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *=2;
    UIScrollView* scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    [self.window addSubview:scrollView];
    
    //adicionando viewprincipal que será usada na scroll
    PrincipalView* hyp = [[PrincipalView alloc]initWithFrame:screenRect];
    [scrollView addSubview:hyp];
    scrollView.contentSize = bigRect.size;
    
    
    
    //configurações da scrollview
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 5,
                                        scrollView.frame.size.height);
    scrollView.pagingEnabled=YES;
    scrollView.backgroundColor = [UIColor blackColor];
    
    //gerando os dados de cada página de acordo com o total de páginas
    int i = 0;
    while (i<=4) {
        
        //criando view que será usada para ser adicionada a cada iteração na scrollview
        UIView *views = [[UIView alloc]
                         initWithFrame:CGRectMake(((scrollView.frame.size.width)*i)+20, 0,
                                                  (scrollView.frame.size.width)-40, scrollView.frame.size.height-20)];
        //primeira tela
        
        //************************************************************************
        
        //Os próximos 3 comentários serão padrões para todas as próximas iterações
        
        //************************************************************************

        if(i == 0){
            
            //adicionando label com a data
            UILabel* data = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-180, self.window.bounds.origin.y, 200, 200)];
            data.text = @"Data: 18/05/2014";
            data.textColor= [UIColor whiteColor];
            [views addSubview:data];
            
            //adicionando label com periodo matutino
            UILabel* manha = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+50, 500, 200)];
            manha.text = @"PERÍODO MATUTINO";
            [manha setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            manha.textColor= [UIColor whiteColor];
            [views addSubview:manha];
            
            //adicionando texto
            UILabel* manhaTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+80, 200, 200)];
            manhaTexto.text = @"Andei no parque";
            manhaTexto.textColor= [UIColor whiteColor];
            [views addSubview:manhaTexto];
            
            //adicionando periodo vespertino
            UILabel* tarde = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+140, 500, 200)];
            tarde.text = @"PERÍODO VESPERTINO";
            [tarde setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            tarde.textColor= [UIColor whiteColor];
            [views addSubview:tarde];
            
            //adicionando texto
            UILabel* tardeTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+170, 200, 200)];
            tardeTexto.text = @"Saí com amigos";
            tardeTexto.textColor= [UIColor whiteColor];
            [views addSubview:tardeTexto];
            
            //adicionando periodo noturno
            UILabel* noite = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+230, 500, 200)];
            noite.text = @"PERÍODO NOTURNO";
            [noite setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            noite.textColor= [UIColor whiteColor];
            [views addSubview:noite];
            
            //adicionando texto
            UILabel* noiteTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+260, 200, 200)];
            noiteTexto.text = @"Descansar em casa";
            noiteTexto.textColor= [UIColor whiteColor];
            [views addSubview:noiteTexto];
            
        }
        
        if(i == 1){
            
            UILabel* data = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-180, self.window.bounds.origin.y, 200, 200)];
            data.text = @"Data: 19/05/2014";
            data.textColor= [UIColor whiteColor];
            [views addSubview:data];
            
            UILabel* manha = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+50, 500, 200)];
            manha.text = @"PERÍODO MATUTINO";
            [manha setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            manha.textColor= [UIColor whiteColor];
            [views addSubview:manha];
            
            
            UILabel* manhaTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+80, 200, 200)];
            manhaTexto.text = @"De manha eu fui pra aula";
            manhaTexto.textColor= [UIColor whiteColor];
            [views addSubview:manhaTexto];
            
            
            UILabel* tarde = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+140, 500, 200)];
            tarde.text = @"PERÍODO VESPERTINO";
            [tarde setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            tarde.textColor= [UIColor whiteColor];
            [views addSubview:tarde];
            
            
            UILabel* tardeTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+170, 200, 200)];
            tardeTexto.text = @"A tarde fui pro BEPiD";
            tardeTexto.textColor= [UIColor whiteColor];
            [views addSubview:tardeTexto];
            
            UILabel* noite = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+230, 500, 200)];
            noite.text = @"PERÍODO NOTURNO";
            [noite setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            noite.textColor= [UIColor whiteColor];
            [views addSubview:noite];
            
            
            UILabel* noiteTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+260, 200, 200)];
            noiteTexto.text = @"Passei programando";
            noiteTexto.textColor= [UIColor whiteColor];
            [views addSubview:noiteTexto];

            
            
            
        }
        
        if(i == 2){
            UILabel* data = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-180, self.window.bounds.origin.y, 200, 200)];
            data.text = @"Data: 20/05/2014";
            data.textColor= [UIColor whiteColor];
            [views addSubview:data];
            
            UILabel* manha = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+50, 500, 200)];
            manha.text = @"PERÍODO MATUTINO";
            [manha setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            manha.textColor= [UIColor whiteColor];
            [views addSubview:manha];
            
            
            UILabel* manhaTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+80, 200, 200)];
            manhaTexto.text = @"De manha eu fui pra aula";
            manhaTexto.textColor= [UIColor whiteColor];
            [views addSubview:manhaTexto];
            
            
            UILabel* tarde = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+140, 500, 200)];
            tarde.text = @"PERÍODO VESPERTINO";
            [tarde setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            tarde.textColor= [UIColor whiteColor];
            [views addSubview:tarde];
            
            
            UILabel* tardeTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+170, 200, 200)];
            tardeTexto.text = @"A tarde fui pro BEPiD";
            tardeTexto.textColor= [UIColor whiteColor];
            [views addSubview:tardeTexto];
            
            UILabel* noite = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+230, 500, 200)];
            noite.text = @"PERÍODO NOTURNO";
            [noite setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            noite.textColor= [UIColor whiteColor];
            [views addSubview:noite];
            
            
            UILabel* noiteTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+260, 200, 200)];
            noiteTexto.text = @"Estudei pra prova";
            noiteTexto.textColor= [UIColor whiteColor];
            [views addSubview:noiteTexto];
            
        }
        if(i == 3){
            
            UILabel* data = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-180, self.window.bounds.origin.y, 200, 200)];
            data.text = @"Data: 21/05/2014";
            data.textColor= [UIColor whiteColor];
            [views addSubview:data];
            
            UILabel* manha = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+50, 500, 200)];
            manha.text = @"PERÍODO MATUTINO";
            [manha setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            manha.textColor= [UIColor whiteColor];
            [views addSubview:manha];
            
            
            UILabel* manhaTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+80, 200, 200)];
            manhaTexto.text = @"De manha eu fui pra aula";
            manhaTexto.textColor= [UIColor whiteColor];
            [views addSubview:manhaTexto];
            
            
            UILabel* tarde = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+140, 500, 200)];
            tarde.text = @"PERÍODO VESPERTINO";
            [tarde setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            tarde.textColor= [UIColor whiteColor];
            [views addSubview:tarde];
            
            
            UILabel* tardeTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+170, 200, 200)];
            tardeTexto.text = @"A tarde fui pro BEPiD";
            tardeTexto.textColor= [UIColor whiteColor];
            [views addSubview:tardeTexto];
            
            UILabel* noite = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+230, 500, 200)];
            noite.text = @"PERÍODO NOTURNO";
            [noite setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            noite.textColor= [UIColor whiteColor];
            [views addSubview:noite];
            
            
            UILabel* noiteTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+260, 200, 200)];
            noiteTexto.text = @"Fui pra casa da namorada";
            noiteTexto.textColor= [UIColor whiteColor];
            [views addSubview:noiteTexto];

        }
        if(i == 4){
            
            UILabel* data = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-180, self.window.bounds.origin.y, 200, 200)];
            data.text = @"Data: 22/05/2014";
            data.textColor= [UIColor whiteColor];
            [views addSubview:data];
            
            UILabel* manha = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+50, 500, 200)];
            manha.text = @"PERÍODO MATUTINO";
            [manha setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            manha.textColor= [UIColor whiteColor];
            [views addSubview:manha];
            
            
            UILabel* manhaTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+80, 200, 200)];
            manhaTexto.text = @"De manha eu fui pra aula";
            manhaTexto.textColor= [UIColor whiteColor];
            [views addSubview:manhaTexto];
            
            
            UILabel* tarde = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+140, 500, 200)];
            tarde.text = @"PERÍODO VESPERTINO";
            [tarde setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            tarde.textColor= [UIColor whiteColor];
            [views addSubview:tarde];
            
            
            UILabel* tardeTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+170, 200, 200)];
            tardeTexto.text = @"A tarde fui pro BEPiD";
            tardeTexto.textColor= [UIColor whiteColor];
            [views addSubview:tardeTexto];
            
            UILabel* noite = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-320, self.window.bounds.origin.y+230, 500, 200)];
            noite.text = @"PERÍODO NOTURNO";
            [noite setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
            noite.textColor= [UIColor whiteColor];
            [views addSubview:noite];
            
            
            UILabel* noiteTexto = [[UILabel alloc]initWithFrame:CGRectMake(self.window.bounds.size.width-310, self.window.bounds.origin.y+260, 200, 200)];
            noiteTexto.text = @"Estudar pra prova";
            noiteTexto.textColor= [UIColor whiteColor];
            [views addSubview:noiteTexto];
            
        }
        
        //adicionando "chave" para cada view que será adicionada na scroll
        [views setTag:i];
        [scrollView addSubview:views];
        
        i++;
    }
    
    
    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
