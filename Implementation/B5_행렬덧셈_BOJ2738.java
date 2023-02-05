package Implementation;
import java.util.Scanner;
public class B5_행렬덧셈_BOJ2738 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int m = sc.nextInt();
        int[][] matrix = new int [n][m];
        for(int t=0;t<2;t++)
            for(int i=0;i<n;i++)
                for(int j=0;j<m;j++)
                    matrix[i][j] += sc.nextInt();
        for(int i=0;i<n;i++) {
            for (int j = 0; j < m; j++)
                System.out.print(matrix[i][j] + " ");
            System.out.println();
        }
    }
}
