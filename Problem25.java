import java.math.BigInteger;

public class Problem25 {
    public static void main(String[] args) {
        int n = 1000;

        int i = findFibTermWithNthDigits(n);

        System.out.println(i + " is the first term in the Fibonacci sequence to contain 1000 digits");
    }

    private static int findFibTermWithNthDigits(int n) {
        BigInteger f1 = BigInteger.ONE;
        BigInteger f2 = BigInteger.ONE;
        BigInteger r;

        int i = 2;
        while (n > String.valueOf(f2).length()) {
            r = f2;
            f2 = f1.add(f2);
            f1 = r;
            i++;
        }
        return i;
    }
}
