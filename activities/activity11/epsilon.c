//
#include <stdio.h>

int latitude_modifier (int, double);
int longitude_modifier (int, double);

int main()
{
    // which function puts BEEF on the stack?
    int postcode = 3054; // Melbourne, Victoria 
    int extended_postcode;

    extended_postcode = latitude_modifier (postcode, -37.786 );
    extended_postcode = longitude_modifier( extended_postcode, 144.969 );

    printf( "extended_postcode = %d\n", extended_postcode);
    return 0;
}

int latitude_modifier (int code, double lat)
{
    int rc;
    if (-30.00 >= lat)
        rc = (3 + (code<<2));
    else
        rc = (1 + (code<<1));

    return rc;
}

int longitude_modifier (int code, double lon)
{
    int rc; 

    if (100.00 < lon)
        rc =  (3 + (code<<2));
    else
        rc =  (1 + (code<<1));

    return rc;
}

