//
//  AppDelegate.m
//  desafioApp1_maio_22
//
//  Created by LucasAndrade on 5/22/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "AppDelegate.h"
#import "PrincipalView.h"
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //criando a scroll view com seu tamanho
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *=2;
    UIScrollView* scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    [self.window addSubview:scrollView];
    
    //adicionadndo view principal na scroll view
    PrincipalView* hyp = [[PrincipalView alloc]initWithFrame:screenRect];
    [scrollView addSubview:hyp];
    scrollView.contentSize = bigRect.size;
    
    
    
   //ajustando as configuracoes da tela
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 15,
                                        scrollView.frame.size.height);
    scrollView.pagingEnabled=YES;
    scrollView.backgroundColor = [UIColor blackColor];
    
    
    //gerando os dados em cada tela, de acordo com o tamanho total de telas
    int i = 0;
    while (i<=14) {
       
        //adicionando uma view um pouco menor que a scrollview
        UIView *views = [[UIView alloc]
                         initWithFrame:CGRectMake(((scrollView.frame.size.width)*i)+20, 0,
                                                  (scrollView.frame.size.width)-40, scrollView.frame.size.height-20)];
        //******************************************************************

        //proximos 3 comentarios são padrões para as próximas iterações
        
        //******************************************************************
        if(i == 0){
            //colocando imagem no tamanho apropriado e adicionando na view menor
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0020.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            //adicionando label com o nome da pessoa
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-70, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"LUCAS ANDRADE";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            //adicionando label com a idade da pessoa
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-35, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"20 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];
            
            
        }
        
        if(i == 1){
            
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0021.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"RIHELDO";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"23 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
            
        }
        
        if(i == 2){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0022.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];

            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-70, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"VICTOR COTRIM";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-35, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"23 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

        }
        if(i == 3){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0023.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"JONATHAN";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-35, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"21 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];
        }
        if(i == 4){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0024.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"RUBENS";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"23 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];
            
        }
        if(i == 5){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0025.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-70, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"LUCAS SANTOS";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-35, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"19 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];
            

            
        }
        if(i == 6){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0026.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"BRAGA";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"56 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        if(i == 7){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0027.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"ALEXANDRE";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-30, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"32 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

        }
        if(i == 8){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0028.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"KAYKE";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"21 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        if(i == 9){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0029.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"AUGUSTO";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"20 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        if(i == 10){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0030.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-70, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"PAULO ROBERTO";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-35, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"24 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        if(i == 11){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0031.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-70, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"PAULO CAMPOS";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-35, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"24 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }

        if(i == 12){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0032.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"IURI";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"25 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        if(i == 13){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0033.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"FÁBIO";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"21 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        if(i == 14){
            
            UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0035.JPG"]];
            pessoa.frame = CGRectMake(views.bounds.size.width/2-85, views.bounds.size.height/2-190, 170, 200);
            [views addSubview:pessoa];
            
            UILabel* nomePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2, 200, 100)];
            nomePessoa.text = @"LAFAYETTE";
            nomePessoa.textColor= [UIColor whiteColor];
            [views addSubview:nomePessoa];
            
            UILabel* idadePessoa = [[UILabel alloc]initWithFrame:CGRectMake(views.bounds.size.width/2-40, views.bounds.size.height/2+40, 200, 100)];
            idadePessoa.text = @"20 ANOS";
            idadePessoa.textColor= [UIColor whiteColor];
            [views addSubview:idadePessoa];

            
        }
        
        //setando a "chave" de cada página e adicionando na scrollview
        [views setTag:i];
        [scrollView addSubview:views];
        
        i++;
    }
    
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
