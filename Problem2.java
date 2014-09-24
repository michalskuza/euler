
public class Problem2 {
    public static void main(String[] args) {
        System.out.println("Sum : " + calculateSum(4000000));
    }

    private static int calculateSum(int limit) {
        int f1 = 1;
        int f2 = 2;
        int sum = 0;

        while (f2 < limit) {
            int tmp = f2;
            f2 = f1 + f2;
            f1 = tmp;

            if (f1 % 2 == 0)
                sum += f1;
        }
        return sum;
    }
}
