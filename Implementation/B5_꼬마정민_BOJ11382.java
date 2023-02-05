package Implementation;
import java.util.Scanner;
public class B5_꼬마정민_BOJ11382 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long result = 0;
        for(int i=0;i<3;i++)
            result += sc.nextLong(); // 1 ≤ A,B,C ≤ 10^12 이므로 int 말고 long 사용
        System.out.println(result);
        sc.close();
    }
}
