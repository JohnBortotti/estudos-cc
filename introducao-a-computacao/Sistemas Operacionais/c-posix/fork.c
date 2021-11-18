#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int main()
{
    // cria um sub-processo que vai executar o mesmo codigo que estiver abaixo
    fork();
  
    printf("Hello world!\n");

		fork();

		printf("Hello world!\n");
    return 0;
}
