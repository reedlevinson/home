#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
* collect the username, and if there is a nickname, push the username over to make room for the
* nickname and add a '/' between them.
*/

int main(int argc, char** argv)
{

  char username[20];
  char nick[10];

  printf("Name: ");
  scanf("%s",username);
  printf("\nNickname: ");
  scanf("%s",nick);

  int len;
  if ((len=strlen(nick))>0) {
    strcpy(username,username+len+1);
    strcpy(nick,username);
    *(username+len)='/';
  }

  printf( "username=\"%s\"\n", username);

}
