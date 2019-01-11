using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// Summary description for EnCryptionManager

public class EnCryptionManager
{
    int ascii;
    char newch;
    string encrypttext = ""; string decrypttext = "";
    public string encryptmydata(string normaltext)
    {
        foreach (char ch in normaltext)
        {
            ascii = ch;
            if (ascii >= 65 && ascii <= 90)
            {
                ascii = 122 - ascii + 65;
            }
            else if (ascii >= 97 && ascii <= 122)
            {
                ascii = 90 - ascii + 97;
            }
            else if (ascii >= 48 && ascii <= 57)
            {
                ascii = 57 - ascii + 48;
            }
            newch = (char)ascii;
            encrypttext = encrypttext + newch;

        }
        return encrypttext;
    }

    public string decryptmydata(string normaltext)
    {
        foreach (char ch in normaltext)
        {
            ascii = ch;
            if (ascii >= 65 && ascii <= 90)
            {
                ascii = 122 - ascii + 65;
            }
            else if (ascii >= 97 && ascii <= 122)
            {
                ascii = 90 - ascii + 97;
            }
            else if (ascii >= 48 && ascii <= 57)
            {
                ascii = 57 - ascii + 48;
            }
            newch = (char)ascii;
            decrypttext = decrypttext + newch;

        }
        return decrypttext;
    }
}
    