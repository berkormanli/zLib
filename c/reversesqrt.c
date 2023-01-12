#include <stdio.h>
#include <math.h>

int isPerfectSquare(int number)
{
    int iVar;
    float fVar;
 
    fVar=sqrt((double)number);
    iVar=fVar;
 
    if(iVar==fVar)
        return 1;
    else
        return 0;
}

int reverse_integer(int to_be_reversed_integer)
{
  int Reminder, Reverse = 0;
 
  while (to_be_reversed_integer > 0)
   {
     Reminder = to_be_reversed_integer %10;
     Reverse = Reverse *10+ Reminder;
     to_be_reversed_integer = to_be_reversed_integer /10;
   }

  return Reverse;
}
 
int main()
{
    int n = 0;
    int increment_numbers = 2;
 
    printf("\nPlease enter n number to calculate\n");
    scanf("%d", & n);
    
    while (n > 0)
    {
        int reverse_int = reverse_integer(increment_numbers);
        if (isPerfectSquare(increment_numbers + reverse_int))
        {
            int sqr = sqrt(increment_numbers + reverse_int);
            printf("\n%d + %d = %d^2\n", increment_numbers, reverse_int, sqr);
            n = n - 1;
        }
        increment_numbers = increment_numbers + 1;
    }
  
}


