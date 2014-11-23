import java.util.LinkedList;
import java.util.List;

public class Problem12 {
    public static void main(String[] args) {
        long limit = 500;

        int size = 1;

        for (long i = 1; size < limit; i++) {
            Long nthTriangle = triangleNumber(i);
            size = findFactors(nthTriangle).size();

            if(i % 1000 == 0)
                System.out.printf("%d %d %d\n", i, nthTriangle, size);

            if (size > limit) {
                System.out.printf("FOUND\n%d %d %d\n", i, nthTriangle, size);
            }
        }
    }

    public static List<Long> findFactors(Long number) {
        LinkedList<Long> factors = new LinkedList<Long>();

        for (long i = 1; i < number; i++) {
            if (number % i == 0) {
                factors.add(i);
            }
        }

        return factors;
    }

    public static Long triangleNumber(long n) {
        return n * (n + 1) / 2;
    }
}

