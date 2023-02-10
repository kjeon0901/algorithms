package Implementation;
import java.util.Arrays;
import java.util.Scanner;

public class S5_성적통계_BOJ5800 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int K = sc.nextInt(); // 1<=K<=100
        int[] N = new int[K];
        int[][] scores = new int[K][]; // 자바에서 2차원 배열을 생성할 때 열의 길이를 명시하지 않으면 행마다 다른 길이의 배열 저장할 수 있음.
        for(int i=0;i<K;i++){
            N[i] = sc.nextInt(); // 2<=N<=50
            scores[i] = new int[N[i]];
            for(int j=0;j<N[i];j++)
                scores[i][j] = sc.nextInt();
        }
        for(int i=0;i<K;i++){
            System.out.printf("Class %d \n", i+1);
            int max = Arrays.stream(scores[i]).max().getAsInt();
            int min = Arrays.stream(scores[i]).min().getAsInt();
            int largest_gap = 0;
            Arrays.sort(scores[i]); // 배열 정렬
            for(int j=0;j<N[i]-1;j++){
                int gap = scores[i][j+1]-scores[i][j];
                if(gap > largest_gap)
                    largest_gap = gap;
            }
            System.out.printf("Max %d, Min %d, Largest gap %d \n", max, min, largest_gap);
        }
    }
}
