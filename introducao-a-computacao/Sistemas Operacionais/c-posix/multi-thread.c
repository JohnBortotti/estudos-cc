#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
  
// A normal C function that is executed as a thread 
// when its name is specified in pthread_create()
void *myThreadFun(void *vargp)
{   
    printf("Sleeping...\n");
    sleep(2);
    printf("Printing from Thread \n");
    return NULL;
}
   
int main()
{
    pthread_t thread_id; //thread type
    printf("Before Thread\n");
    pthread_create(&thread_id, NULL, myThreadFun, NULL); // create new thread with "myThreadFun" routine
    pthread_join(thread_id, NULL); // stop current thread until the called thread complete its execution
    printf("After Thread\n");
    exit(0);
}
