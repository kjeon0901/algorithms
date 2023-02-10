package Implementation;
import java.util.Scanner;
public class B5_개수세기_BOJ10807 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt(); // 1<=N<=100
        int[] int_list = new int[N]; // 크기 N
        for(int i=0; i<N; i++)
            int_list[i] = sc.nextInt();
        int v = sc.nextInt(); // -100<=v<=100
        int cnt = 0;
        for(int i=0; i<N; i++){
            if(int_list[i] == v)
                cnt++;
        }
        System.out.printf("%d", cnt);
    }
}