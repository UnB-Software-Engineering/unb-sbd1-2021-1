#include <stdio.h>

struct owner{
    char first_name[50];
    char last_name[50];
    char cpf[11];
    int total;
};
struct owner owner;

struct car{
    char company[50];
    char model[50];
    char license_plate[8];
};
struct car car;

int main () {
    int opcao = 0;
    FILE *file;
    file = fopen("proprietario_de_automoveis.txt", "a");
    fclose(file);
    
    printf("----------- CADASTRO DE AUTOMOVEIS -----------\n\n");
    printf("1 - Inserir novo cadastro\n");
    printf("2 - Encerrar cadastro\n");
    
    scanf("%d", &opcao);
    
    while(opcao!=2) {
        
        switch(opcao){
            case 1:
                // cadastro dados do proprietario
                printf("> Insira os dados do dono do carro:\n\n");
            
                printf("Primeiro Nome:\n");
                scanf("%s", &owner.first_name);
            
                printf("Sobrenome:\n");
                scanf("%s", &owner.last_name);
                
                printf("CPF:\n");
                scanf("%s", &owner.cpf);
                
                printf("Quantos carros possui?\n");
                scanf("%d", &owner.total);
                
                //abre arquivo e salva dados do proprietario
                
                file = fopen("proprietario_de_automoveis.txt", "a");
            
                fprintf(file, "----------- CADASTRO DE AUTOMÓVEIS -----------\n\n");
                fprintf(file, "Dados do Proprietário:\n");
                fprintf(file, "\tNome: %s %s\n", owner.first_name, owner.last_name);
                fprintf(file, "\tCPF: %s\n", owner.cpf);
                
                fclose(file);
                
                for (int i=1; i<=owner.total; i++){
                    printf("\n> Insira os dados do carro %d:\n\n", i);
            
                    printf("Marca:\n");
                    scanf("%s", &car.company);
                    
                    printf("Modelo:\n");
                    scanf("%s", &car.model);
                
                    printf("Placa:\n");
                    scanf("%s", &car.license_plate);
                    
                    //abre arquivo e salva dados do carro
                    file = fopen("proprietario_de_automoveis.txt", "a");
                    
                    if(file == NULL){
                        printf("Arquivo nao pode ser aberto");
                        getchar();
                        exit(1);
                    }
                    
                    fprintf(file, "\nDados do Carro %d:\n", i);
                    fprintf(file, "\tMarca: %s\n", car.company);
                    fprintf(file, "\tModelo: %s\n", car.model);
                    fprintf(file, "\tPlaca: %s\n", car.license_plate);
                
                    fclose(file);
                }
                break;
            
            case 2:
                printf("\n\nAgradecemos pelo cadastro\n");
                exit (0);
        }
        printf("\n\n----------- CADASTRO DE AUTOMOVEIS -----------\n\n");
        printf("1 - Inserir novo cadastro\n");
        printf("2 - Encerrar cadastro\n");
        scanf("%d", &opcao);
    }
    
    printf("\n\nAgradecemos pelo cadastro\n");
    return 0;
}