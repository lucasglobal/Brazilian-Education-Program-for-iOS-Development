//
//  LARTableViewController.m
//  desafio4_julho_17
//
//  Created by LucasAndrade on 7/18/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "LARTableViewController.h"
#import <sqlite3.h>
#import "LARTableViewCell.h"
#import "ViewController.h"
@interface LARTableViewController ()

@end

@implementation LARTableViewController
@synthesize arrayPessoa;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Pessoas";
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.arrayPessoa = [NSMutableArray array];
    NSString* dataBaseName = @"meuBanco.sqlite";
    NSString* path = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"%@",path);
    NSString* dataBasePath = [path stringByAppendingPathComponent:dataBaseName];
    sqlite3* dataBase;
    NSLog(@"%@",dataBasePath);
    if(sqlite3_open([dataBasePath UTF8String], &dataBase)== SQLITE_OK){
        NSLog(@"banco criado");
        const char *sqlStatement = "Select * from cadastro";
        
        
        sqlite3_stmt *compiledStatement;
        const char * sqlStatementCreateSalario = "create table salario (id integer primary key autoincrement, salario integer, mes integer, ano integer)";
        const char *sqlStatementCreateCadastro = "create table cadastro (id integer primary key autoincrement, nome text, idade integer, email text,foto text, salario integer, FOREIGN KEY (salario) REFERENCES Salario(id))";
      

        
        sqlite3_exec(dataBase, sqlStatementCreateSalario, NULL, NULL,NULL);
        sqlite3_exec(dataBase, sqlStatementCreateCadastro, NULL, NULL,NULL);
       
        
        const char *sqlStatementInsert1 = "insert into salario (salario,mes,ano) values (1000,01,2014)";
        const char *sqlStatementInsert2 = "insert into salario (salario,mes,ano) values (4000,02,2014)";
        const char *sqlStatementInsert3 = "insert into cadastro (nome,idade,email,foto,salario) values (\"Lucas\",20,\"andradelucas.r@gmail.com\",\"1278295_493674930723661_1578508378_n.jpg\",1)";
        const char *sqlStatementInsert4 = "insert into cadastro (nome,idade,email,foto,salario) values (\"Kaisa\",19,\"kckaistaina@gmail.com\",\"165968_297110197083407_79615221_n.jpg\",2)";
        sqlite3_exec(dataBase, sqlStatementInsert1, NULL, NULL,NULL);
        sqlite3_exec(dataBase, sqlStatementInsert2, NULL, NULL, NULL);
        sqlite3_exec(dataBase, sqlStatementInsert3, NULL, NULL,NULL);
        sqlite3_exec(dataBase, sqlStatementInsert4, NULL, NULL, NULL);
        if(sqlite3_prepare_v2(dataBase, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            NSLog(@"FEZ CONSULTA!!!!!!");
            
            while (sqlite3_step(compiledStatement) == SQLITE_ROW) {
                const int idPessoa = sqlite3_column_int(compiledStatement, 0);
                const char* nome = (const char*)sqlite3_column_text(compiledStatement, 1);
                NSString *nomeFinal = nome == NULL ? nil : [[NSString alloc]initWithUTF8String:nome];
                const int idade = sqlite3_column_int(compiledStatement, 2);
                const char* email = (const char*)sqlite3_column_text(compiledStatement, 3);
                NSString *emailFinal = email == NULL ? nil : [[NSString alloc]initWithUTF8String:email];
                const char* foto = (const char*)sqlite3_column_text(compiledStatement, 4);
                NSString *fotoFinal = foto == NULL ? nil : [[NSString alloc]initWithUTF8String:foto];
                const int salario = sqlite3_column_int(compiledStatement, 5);
                NSString* sqlSearch = [[NSString alloc]initWithFormat:@"select salario from salario where (id = %d)",salario];
                const char* sqlSearchFinal = [sqlSearch UTF8String];
                
                sqlite3_stmt *compiledStatement3;
                if(sqlite3_prepare_v2(dataBase, sqlSearchFinal, -1, &compiledStatement3, NULL) == SQLITE_OK){
                    while(sqlite3_step(compiledStatement3) == SQLITE_ROW){
                        const int salarioFinal = sqlite3_column_int(compiledStatement3, 0);
                        NSLog(@"id %d , nome: %@, idade : %d, email: %@, foto: %@, salario %d",idPessoa,nomeFinal,idade,emailFinal,fotoFinal,salarioFinal);
                        Pessoa* pessoa = [[Pessoa alloc]initWithId:idPessoa withNome:nomeFinal withIdade:idade withEmail:emailFinal withFoto:fotoFinal withSalario:salarioFinal];
                        [self.arrayPessoa addObject:pessoa];
                    }
                }
            }
        }
    }

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.arrayPessoa count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* identificador = @"Cell";
    LARTableViewCell *celulaModificada = [tableView dequeueReusableCellWithIdentifier:identificador forIndexPath:indexPath];
    Pessoa* pessoaAux = arrayPessoa[indexPath.row];
    celulaModificada.labelID.text = [[NSString alloc]initWithFormat:@"%d",pessoaAux.idPessoa];
    celulaModificada.labelNome.text = pessoaAux.nome;
    celulaModificada.labelIdade.text = [[NSString alloc]initWithFormat:@"%d",pessoaAux.idade];
    celulaModificada.labelEmail.text = pessoaAux.email;
    
    celulaModificada.imagemPessoa.image = [UIImage imageNamed:pessoaAux.foto];
    // Configure the cell...
    
    return celulaModificada;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewController* ViewControllerAux = [self.parentViewController childViewControllers][1];
    ViewControllerAux.pessoa = self.arrayPessoa[indexPath.row];
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
