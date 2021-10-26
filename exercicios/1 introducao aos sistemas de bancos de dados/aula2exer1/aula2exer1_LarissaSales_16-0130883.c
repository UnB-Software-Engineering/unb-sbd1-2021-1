#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_POPRIETARIOS 50

typedef struct owner{
    char first_name[50];
    char last_name[50];
    char cpf[11];
    char company[50];
    char model[50];
    char renavam[10];
    char license_plate[8];
    int ativo;
} Owner;

Owner owner[MAX_POPRIETARIOS];

void menu();
void cadastrar();
void remover();
void listar();

int main(){
    menu();
    return 0;
}

void menu(){
    int option;
    
    do{
        //system("cls");
        
        printf("----------- CADASTRO DE AUTOMOVEIS -----------\n\n");
        printf("\n1 - Inserir novo cadastro\n");
        printf("\n2 - Listar dados cadastrados\n");
        printf("\n3 - Remover cadastro\n");
        printf("\n0 - Sair\n");
        
        printf("\nDigite aqui: ");
        scanf("%d", &option);

        switch(option){
            case 1:
                cadastrar();
                break;
            case 2:
                listar();
                break;
            case 3:
                remover();
                break;
        }
    } while(option != 0);
}

void cadastrar(){
    int i;
    char first_name[50];
    char last_name[50];
    char cpf[11];
    char company[50];
    char model[50];
    char renavam[10];
    char license_plate[8];
    int option;
    
    do {
        //system("cls");
        FILE *file;
        file = fopen("proprietario_de_automoveis.txt", "a");
        //fclose(file);
        
        printf("\n> Insira os dados do dono do carro:\n\n");
                
        printf("Primeiro Nome:");
        fgets(first_name, sizeof(first_name), stdin);
    
        printf("\nSobrenome: ");
        fgets(last_name, sizeof(last_name), stdin);
        
        printf("\nCPF: ");
        fgets(cpf, sizeof(cpf), stdin);
        
        printf("\n> Insira os dados do carro:\n");
        
        printf("\nMarca: ");
        fgets(company, sizeof(company), stdin);
        
        printf("\nModelo: ");
        fgets(model, sizeof(model), stdin);
        
        printf("\nRenavam: ");
        fgets(renavam, sizeof(renavam), stdin);
        
        printf("\nPlaca: ");
        fgets(license_plate, sizeof(license_plate), stdin);

        for(i=0; i < MAX_POPRIETARIOS; i++){
            if (owner[i].ativo == 0){
                strcpy(owner[i].first_name, first_name);
                strcpy(owner[i].last_name, last_name);
                strcpy(owner[i].cpf, cpf);
                strcpy(owner[i].company, company);
                strcpy(owner[i].model, model);
                strcpy(owner[i].renavam, renavam);
                strcpy(owner[i].license_plate, license_plate);
                owner[i].ativo = 1;
            }

            fprintf(file, "----------- CADASTRO DE AUTOMÓVEIS -----------\n\n");
            fprintf(file, "Dados do Proprietário:\n");
            fprintf(file, "\tNome: %s %s\n", owner[i].first_name, owner[i].last_name);
            fprintf(file, "\tCPF: %s\n", owner[i].cpf);
            fprintf(file, "\tMarca: %s\n", owner[i].company);
            fprintf(file, "\tModelo: %s\n", owner[i].model);
            fprintf(file, "\tPlaca: %s\n", owner[i].license_plate);
        }
        
        fclose(file);
        
        printf("\n1 - Continuar\n");
        printf("0 - Menu\n");
        scanf("Digite: %d", &option);
        
    } while (option != 0); 
}

void listar(){
    int i, option;

    do{
        system("cls");
        printf("\nLista de Proprietarios\n");

        for (i=0; i < MAX_POPRIETARIOS; i++){
            if(owner[i].ativo == 1){
                printf("\nProprietario numero: %d\n\n", i+1);
                printf("Nome: %s %s\n", owner[i].first_name, owner[i].last_name);
                printf("CPF: %s\n", owner[i].cpf);
                printf("Modelo: %s\n", owner[i].model);
                printf("Renavam: %s\n", owner[i].renavam);
            }
        }
    
        printf("\n1 - Continuar\n");
        printf("0 - Menu\n");
        scanf("Digite: %d", &option);
        
    } while(option!=0);
}

void remover(){
    int numero, option;
    
    do{
        //system("cls");
        listar();

        printf("\n Digite o numero do proprietario a ser removido: ");
        scanf("%d", &numero);
        --numero;

        owner[numero].ativo=0;

        printf("Cadastro exluido com sucesso!");
        getchar();

        printf("\n1 - continuar\n0 - Menu\n");
        scanf("%d", &option);
    } while(option!=0);
}