//
//  DesafioUm.m
//  Desafio_maio_08
//
//  Created by LucasAndrade on 5/8/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "DesafioUm.h"

@implementation DesafioUm

-(id)init{
    _caminho = @"/users/lucasandrade/Desktop/Ambiente";
    return self;
}

-(NSString*)questao_1_1{
    NSFileManager *arrayDadosPasta = [[NSFileManager alloc] init];
    NSString *arquivo;
    int contaDiretorio = 0;
    
    //pegando os dados a partir do caminho
    NSDirectoryEnumerator *dirEnum = [arrayDadosPasta enumeratorAtPath:_caminho];
    
    //enquanto existirem arquivos
    while (arquivo = [dirEnum nextObject]) {
        
        //se o arquivo não tiver extensão é porque é uma pasta, então conta mais um para o contador de pastas
        if([[arquivo pathExtension] isEqualToString:@""]){
            contaDiretorio++;
        }
        
    }
    //formatando resposta como ela será escrita no txt
    NSString *resposta = [NSString stringWithFormat:@"%d diretorios e subdiretorios\n", contaDiretorio];
    
    return resposta;
}

-(NSString*)questao_1_2{
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    
    int quantidadeArquivo = 0;
    
    //lendo todas as posicoes do array ate ao seu tamanho
    //comeca em 1 porque sempre existe a pasta .DSSTORE que deve ser descartada
    //se o arquivo nao tiver extensao é porque ele é uma pasta
    for(int i = 1;i<[arrayDadosPasta count];i++){
        if(![[arrayDadosPasta[i] pathExtension] isEqualToString:@""]){
            quantidadeArquivo++;
        }
    }
    //formatando a resposta pois a quantidade é inteira
    NSString *resposta = [NSString stringWithFormat:@"%d arquivos\n",quantidadeArquivo];
    
    return resposta;


    return nil;
}
-(NSString*)questao_1_3{
    
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    
    NSMutableArray* arrayTipos = [NSMutableArray array];
    //lendo todas as posicoes do array ate ao seu tamanho
    //comeca em 1 porque sempre existe a pasta .DSSTORE que deve ser descartada
    //se o arquivo nao tiver extensao é porque ele é uma pasta
        for(int i = 0;i<[arrayDadosPasta count];i++){
            NSString *extension = [arrayDadosPasta[i] pathExtension];
            if(![extension isEqualToString:@""]){
                if(![arrayTipos containsObject:extension]){
                    [arrayTipos addObject:[arrayDadosPasta[i] pathExtension]];
                }
            }
        }


    //formatando a resposta pois a quantidade é inteira
    NSString *resposta = [NSString stringWithFormat:@"%lu tipos de arquivos\n",[arrayTipos count]];
    return resposta;
}
-(NSString*)questao_1_4{
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    
    NSMutableArray* arrayTipos = [NSMutableArray array];
  
    //Na variavel arrayTipos terá todos os tipos diferentes encontrados
    for(int i = 0;i<[arrayDadosPasta count];i++){
        NSString *extension = [arrayDadosPasta[i] pathExtension];
        //se o arquivo nao tiver extensao é porque ele é uma pasta
        if(![extension isEqualToString:@""]){
            //se ainda nao tiver a extensao, adiciona a extensao
            if(![arrayTipos containsObject:extension]){
                [arrayTipos addObject:[arrayDadosPasta[i] pathExtension]];
            }
        }
    }
    
    NSString* stringResposta = [[NSString alloc]init];
    int count = 0;
    //formatando a reposta
    for(NSString* auxilio in arrayTipos){
        
        stringResposta = [stringResposta stringByAppendingString:auxilio];
        //Até penúltima posição ele coloca a vírgula
        if( count < [arrayTipos count]-2){
            stringResposta = [stringResposta stringByAppendingString:@", "];
        }
        else{
            //Na penúltima posição adiciona o "e"
            if ( count+1 < [arrayTipos count]) {
                stringResposta = [stringResposta stringByAppendingString:@" e "];
            }
        }
        
        count++;
    }
    return [stringResposta stringByAppendingString:@"\n"];

}

-(NSString*)questao_1_5{
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    
    NSMutableArray* arrayTipos = [NSMutableArray array];
    //lendo todas as posicoes do array ate ao seu tamanho
    //se o arquivo nao tiver extensao é porque ele é uma pasta
    for(int i = 0;i<[arrayDadosPasta count];i++){
        if(![[arrayDadosPasta[i] pathExtension] isEqualToString:@""]){
            [arrayTipos addObject:[arrayDadosPasta[i] pathExtension]];
        }
    }
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    //Criando um dicionário para relacionar a quantidade de arquivos com os próprios tipos
    for (NSString *s in arrayTipos) {
        if ( ![dic objectForKey:s] ){
            //Começa com uma ocorrência do tipo corrente
            [dic setObject:[NSNumber numberWithInt:1] forKey:s];
        } else {
            //Se houver outra ocorrência, aumenta-se no objeto
            NSNumber* ocorrencia = [dic objectForKey:s];
            [dic setObject:[NSNumber numberWithInt: [ocorrencia intValue]+1] forKey:s];
        }
    }
    int count = 0;
    NSString* stringResposta = [[NSString alloc]init];
    
    //Formatando resposta
    for(NSString* auxilio in dic){
        
        
        stringResposta = [stringResposta stringByAppendingString:auxilio];
        stringResposta = [stringResposta stringByAppendingString:@" "];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@",[dic objectForKey:auxilio]];
        
        //Até penúltima posição ele coloca a vírgula
        if( count < [dic count]-2){
            stringResposta = [stringResposta stringByAppendingString:@", "];
        }
        //Na penúltima posição adiciona o "e"
        else{
            if ( count+1 < [dic count]) {
                stringResposta = [stringResposta stringByAppendingString:@" e "];
            }
        }
        
        count++;
    }

    return [stringResposta stringByAppendingString:@"\n"];
}

-(NSString*)questao_1_6{
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    
    //lendo todas as posicoes do array ate ao seu tamanho
    //se o arquivo nao tiver extensao é porque ele é uma pasta
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    for(int i = 0;i<[arrayDadosPasta count];i++){
        NSString *s = [arrayDadosPasta[i] pathExtension];
        
        if(![s isEqualToString:@""]){
            //Pegando cada arquivo
            NSData* data = [NSData dataWithContentsOfFile:[self.caminho stringByAppendingFormat:@"/%@",arrayDadosPasta[i]]];
            
            //Na primeira ocorrência, salvar
            if ( ![dic objectForKey:s] ){
                [dic setObject:[NSNumber numberWithLong:[data length]] forKey:s];
            }
            //Nas próximas ocorrências ele pega o tamanho do arquivo e soma com o que já existe lá
            else {
                NSNumber* ocorrencia = [dic objectForKey:s];
                [dic setObject:[NSNumber numberWithLong: [ocorrencia longValue]+[data length]] forKey:s];
            }
            
        }
    }
    
    
    int count = 0;
    NSString* stringResposta = [[NSString alloc]init];
    
    for(NSString* auxilio in dic){
        
        //formatando a resposta
        stringResposta = [stringResposta stringByAppendingString:auxilio];
        stringResposta = [stringResposta stringByAppendingString:@" "];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@",[dic objectForKey:auxilio]];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@",@"bytes"];
        
        //Até penúltima posição ele coloca a vírgula
        if( count < [dic count]-2){
            stringResposta = [stringResposta stringByAppendingString:@", "];
        }
        //Na penúltima posição adiciona o "e"
        else{
            if ( count+1 < [dic count]) {
                stringResposta = [stringResposta stringByAppendingString:@" e "];
            }
        }
        
        count++;
    }
    return [stringResposta stringByAppendingString:@"\n"];
}

-(NSString*)questao_1_7{
    
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    for(int i = 0;i<[arrayDadosPasta count];i++){
        NSString *s = [arrayDadosPasta[i] pathExtension];
        
        if(![s isEqualToString:@""]){
            
            //pegando somente os arquivos
            NSData* data = [NSData dataWithContentsOfFile:[self.caminho stringByAppendingFormat:@"/%@",arrayDadosPasta[i]]];
            
            //Se não existir nenhuma ocorrência do tipo, ele cria e seta como sendo o menor
            if ( ![dic objectForKey:s] ){
                
                NSMutableArray *menor = [[NSMutableArray alloc]init];
                [menor addObject:[NSNumber numberWithLong:[data length]]];
                [menor addObject:arrayDadosPasta[i]];
                [dic setObject:menor forKey:s];
                
            } else {
                NSArray* menor = [dic objectForKey:s];
                //se ele encontrar outro menor, ele seta como o este novo sendo o menor para aquele tipo
                if ( [[menor firstObject] longValue] > [data length] ) {
                    
                    NSMutableArray *menorAinda = [[NSMutableArray alloc]init];
                    [menorAinda addObject:[NSNumber numberWithLong:[data length]]];
                    [menorAinda addObject:arrayDadosPasta[i]];
                    [dic setObject: menorAinda forKey:s];
                }
            }
            
        }
    }

    
    int count = 0;
    NSString* stringResposta = [[NSString alloc]init];
    
    for(NSString* auxilio in dic){
        
        //Formatando resposta
        stringResposta = [stringResposta stringByAppendingString:[dic objectForKey:auxilio][1]];
        stringResposta = [stringResposta stringByAppendingString:@" "];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@ ",[dic objectForKey:auxilio][0]];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@",@"bytes"];
        
        //Até penúltima posição ele coloca a vírgula
        if( count < [dic count]-2){
            stringResposta = [stringResposta stringByAppendingString:@", "];
        }
        //Na penúltima posição adiciona o "e"
        else{
            if ( count+1 < [dic count]) {
                stringResposta = [stringResposta stringByAppendingString:@" e "];
            }
        }
        
        count++;
    }
    return [stringResposta stringByAppendingString:@"\n"];

}
-(NSString*)questao_1_8{
    
    //criando array com dados dos arquivos do caminho do diretorio
    NSArray* arrayDadosPasta = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:self.caminho error:nil];
    
    
    //lendo todas as posicoes do array ate ao seu tamanho
    //se o arquivo nao tiver extensao é porque ele é uma pasta
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    for(int i = 0;i<[arrayDadosPasta count];i++){
        NSString *s = [arrayDadosPasta[i] pathExtension];
        
        if(![s isEqualToString:@""]){
            //Pegando somente os arquivos
            NSData* data = [NSData dataWithContentsOfFile:[self.caminho stringByAppendingFormat:@"/%@",arrayDadosPasta[i]]];
            
            if ( ![dic objectForKey:s] ){
                //Na primeira ocorrência, seta que este é o maior desse tipo
                NSMutableArray *maior = [[NSMutableArray alloc]init];
                [maior addObject:[NSNumber numberWithLong:[data length]]];
                [maior addObject:arrayDadosPasta[i]];
                [dic setObject:maior forKey:s];
                
            } else {
                NSArray* maior = [dic objectForKey:s];
                //Se houver outra ocorrência ele seta como esse novo sendo o novo maior desse tipo
                if ( [[maior firstObject] longValue] < [data length] ) {
                    
                    NSMutableArray *maiorAinda = [[NSMutableArray alloc]init];
                    [maiorAinda addObject:[NSNumber numberWithLong:[data length]]];
                    [maiorAinda addObject:arrayDadosPasta[i]];
                    [dic setObject: maiorAinda forKey:s];
                }
            }
            
        }
    }
    
    
    //formatando a resposta pois a quantidade é inteira
    int count = 0;
    NSString* stringResposta = [[NSString alloc]init];
    
    for(NSString* auxilio in dic){
        
        //Formatando resposta
        stringResposta = [stringResposta stringByAppendingString:[dic objectForKey:auxilio][1]];
        stringResposta = [stringResposta stringByAppendingString:@" "];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@ ",[dic objectForKey:auxilio][0]];
        stringResposta = [stringResposta stringByAppendingFormat:@"%@",@"bytes"];
        
        //Até penúltima posição ele coloca a vírgula
        if( count < [dic count]-2){
            stringResposta = [stringResposta stringByAppendingString:@", "];
        }
        //Na penúltima posição adiciona o "e"
        else{
            if ( count+1 < [dic count]) {
                stringResposta = [stringResposta stringByAppendingString:@" e "];
            }
        }
        
        count++;
    }
    
    return [stringResposta stringByAppendingString:@"\n"];
}
-(NSString*)questao_1_9{
    NSMutableArray *telefones = [[NSMutableArray alloc] init];
    
    //Alimentando nsstring com o conteudo do segredo.txt
    NSString *conteudoTxt = [NSString stringWithContentsOfFile:[self.caminho stringByAppendingString:@"/segredo.txt"] encoding:NSUTF8StringEncoding error:nil];
    
    //Cria uma máscara
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern: @"(\\d{2})?([(]\\d{2}[)])?\\d{4}([-])?\\d{4}" options:0 error:nil];
    
    //Alimenta um array com as ocorrências encontradas dentro de todo o conteúdo de acordo com a máscara criada
    NSArray *telefones2 = [regex matchesInString:conteudoTxt options:0 range: NSMakeRange(0, [conteudoTxt length])];
    
    //Verificando ocorrência
    for(NSTextCheckingResult *telefone in telefones2) {
        [telefones addObject:[conteudoTxt substringWithRange:[telefone range]]];
    }
    NSString* resposta = [[NSString alloc]init];
    
    //Formatando resposta
    for(NSString* strAux in telefones){
        resposta = [resposta stringByAppendingFormat:@"\n%@\n",strAux];
    }
    return resposta;
}

@end
