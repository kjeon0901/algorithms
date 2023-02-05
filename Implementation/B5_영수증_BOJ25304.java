package Implementation; // 백준 제출할 때는 삭제
import java.util.Scanner;
public class B5_영수증_BOJ25304 { // 백준 제출할 때는 Main 으로 변경
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int total = scanner.nextInt();
        int category = scanner.nextInt();
        int a, b, cnt=0;
        for(int i=0;i<category;i++){
            a = scanner.nextInt();
            b = scanner.nextInt();
            cnt += a*b;
        }
        if(total == cnt)
            System.out.println("Yes");
        else System.out.println("No");
    }
}
