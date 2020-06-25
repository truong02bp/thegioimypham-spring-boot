package com.dulich.ultils;

public class PriceUtil
{
    public static Long toLong(String price)
    {
        long rs = 0;
        for (int i=0;i<price.length();i++)
            if (price.charAt(i)>='0' && price.charAt(i)<='9')
                rs = rs*10 + (price.charAt(i)-'0');
        return rs;
    }
    public static String toString(Long price)
    {
        String rs = "₫";
        int cnt=0;
        while(price>0)
        {
            long temp = price%10;
            rs+= temp;
            cnt++;
            if (cnt==3 && price/10!=0)
            {
                rs+=',';
                cnt=0;
            }
            price/=10;
        }
        StringBuffer reverse = new StringBuffer(rs);
        return reverse.reverse().toString();
    }
}
