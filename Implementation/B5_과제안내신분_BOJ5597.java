package Implementation;

import java.util.Scanner;

public class B5_과제안내신분_BOJ5597 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] students = new int[31];

        // 0번째 인덱스는 없는 인덱스로 생각
        for (int i = 1; i < 29; i++) { // 제출한 28명의 학생들
            int submit = scanner.nextInt();
            students[submit] = 1; // 입력으로 들어오는 정수가 1~30이므로 submit 자리에 30이 들어가져야 함. 따라서 students 배열 크기는 31
        }
        for (int i = 1; i < students.length; i++) { // 전체 30명의 학생들
            if (students[i] != 1) {
                System.out.println(i);
            }
        }
        scanner.close();
    }
}