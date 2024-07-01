#include <stdio.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define SEGSIZE 100

void usage();
void writeshm(int shmid, char *segptr, char *text);
void readshm(int shmid, char *segptr);
void removeshm(int shmid);
void changemode(int shmid, char *mode);

int main(int argc, char *argv[])
{
    key_t key;
    int shmid;
    char *segptr;

    if (argc == 1)
    {
        usage();
    }

    key = ftok(".", 'S');

    if ((shmid = shmget(key, SEGSIZE, IPC_CREAT | IPC_EXCL | 0666)) == -1)
    {
        printf("Shared memory segment exists - opening as a client\n");
        if ((shmid = shmget(key, SEGSIZE, 0)) == -1)
        {
            perror("shmget");
            exit(1);
        }
    }
    else
    {
        printf("Creating a new shared memory segment\n");
    }

    if ((segptr = shmat(shmid, 0, 0)) == (char *)-1)
    {
        perror("shmat");
        exit(1);
    }

    switch (tolower(argv[1][0]))
    {
    case 'w':
        writeshm(shmid, segptr, argv[2]);
        break;
    case 'r':
        readshm(shmid, segptr);
        break;
    case 'd':
        removeshm(shmid);
        break;
    case 'm':
        changemode(shmid, argv[2]);
        break;
    default:
        usage();
    }

    return 0;
}

void writeshm(int shmid, char *segptr, char *text)
{
    strcpy(segptr, text);
    printf("Done...\n");
}

void readshm(int shmid, char *segptr)
{
    printf("segptr: %s\n", segptr);
}

void removeshm(int shmid)
{
    shmctl(shmid, IPC_RMID, 0);
    printf("Shared memory segment marked for deletion\n");
}

void changemode(int shmid, char *mode)
{
    struct shmid_ds myshmds;
    shmctl(shmid, IPC_STAT, &myshmds);
    printf("Old permissions were: %o\n", myshmds.shm_perm.mode);
    sscanf(mode, "%o", &myshmds.shm_perm.mode);
    shmctl(shmid, IPC_SET, &myshmds);
    printf("New permissions are: %o\n", myshmds.shm_perm.mode);
}

void usage()
{
    fprintf(stderr, "A utility for tinkering with shared memory\n");
    fprintf(stderr, "\nUSAGE: (w)rite <text>\n");
    fprintf(stderr, " (r)ead\n");
    fprintf(stderr, " (d)elete\n");
    fprintf(stderr, " (m)ode change <octal mode>\n");
    exit(1);
}
