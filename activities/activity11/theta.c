/*
 * A simple "password" program. The password is hardcoded for simplicity. 
 * The user can attempt at most 3 password guesses. 
 * The goal: successfully "authenticate" by inputting the correct password.
 *
 * This program demonstrates that well-crafted password guesses, though
 * incorrect, can result in a successful authentication outcome
 * (i.e., the "success!" message). 
 *
 * The hardcoded password is currently "cs50". 
 * A password guess of "abcdefghijk" allows the user to authenticate. Why?
 *
 * - Travis Peters, April 2016
 * - David Kotz, April 2019
 * - Charles Palmer, April 2024
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// global *variables*
const int MAX_NUM_GUESSES = 3;      // max. number of password guesses allowed
const char PASSWORD[] = "cs50";     // password of length = 4 (+1 for '\0')
                                    // (NOTE: never hardcode password! :)

// function prototype *declarations*
static void checkPassword(int *, char *);

/* ********************** main ******************* */

/*
 * Main loop - ask for a guess, quit when it matches the answer
 *  or when guesses exceeds MAX_NUM_GUESSES.
 */
int main(int argc, char **argv)
{
  int n_guesses = 0;        // number of guesses so far
  int authenticated = 0;   // "flag": did the user successfully authenticate?
  char guess[10];          // buffer for holding the password guess

  // get password and check if user authenticated
  while (n_guesses < MAX_NUM_GUESSES) {
    checkPassword(&authenticated, guess);
    n_guesses++;
    if (authenticated)
      break;
    else
      printf("incorrect. try again. (attempt %d)\n", n_guesses);
  }

  // check: did we exit because we ran out of guesses?!
  if (!authenticated && n_guesses == MAX_NUM_GUESSES) {
    printf("you've exceeded the max. number of attempts. try again later.\n");
    exit(2);
  }

  printf("success!\n");
  return 0;
}

/* ******************* checkPassword ***************** */
/* checkPassword: prompt the user for a password, and compare with correct
 * password.  
 * Return non-zero if error or incorrect password.
 * Return zero if correct password.
 */
static void
checkPassword(int *ok, char* guess) 
{
  *ok = 0; // assume the worst! 
  
  // if fgets encounters an error, or EOF after no input, it returns NULL.
  printf("password: ");
  if (fgets(guess, 50, stdin) == NULL) {
    return ;
  }
  
  // this should not happen, but I want to protect the subscript below
  if (strlen(guess) == 0) {
    return ;
  }

  // fgets guarantees the string is null-terminated, but there may not be a
  // newline if the buffer filled before a newline was encountered.
  // if that happens, clear the stdin until newline or EOF.
  if (guess[strlen(guess)-1] != '\n') {
    // strip characters until end of file or newline is reached
    while ( !feof(stdin) && getchar() != '\n' )
      ; // discard the rest of characters on input line
    return ;
  } else {
    // get rid of \n at end of buffer.
    guess[strlen(guess)-1] = '\0';
  }

  // check "guessed" password against the correct password.
  if (strcmp(PASSWORD, guess) == 0)
    *ok = 1;

  return ;
}
