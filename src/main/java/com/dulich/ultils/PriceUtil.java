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
    public static Long getMin(String price) {
        int s = price.charAt(0) - '0';
        switch (s) {
            case 1:
                return (long) 100000;
            case 2:
                return (long) 200000;
            case 3:
                return (long) 300000;
            case 4:
                return (long) 400000;
        }
        return (long)0;
    }
    public static Long getMax(String price) {
        int s = price.charAt(price.length()-1) - '0';
        switch (s) {
            case 2:
                return (long) 200000;
            case 3:
                return (long) 300000;
            case 4:
                return (long) 400000;
            default:
                return (long)10000000;
        }
    }
}
