import java.util.Scanner;

public class Clock {
    private int hours, minutes, seconds;
    private boolean isAM;

    public Clock(int h, int m, int s) {
        hours = h;
        minutes = m;
        seconds = s;
        setAMPM();
    }

    private void setAMPM() {
        isAM = hours < 12;
        if (hours == 0) hours = 12;
        else if (hours > 12) hours -= 12;
    }

    public void showTime() {
        System.out.printf("Time: %02d:%02d:%02d %s\n", hours, minutes, seconds, isAM ? "AM" : "PM");
        System.out.println("Time: " + hours + ":" + minutes + ":" + seconds + " " + (isAM ? "AM" : "PM"));
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Hours (0-23): ");
        int h = sc.nextInt();
        System.out.print("Minutes (0-59): ");
        int m = sc.nextInt();
        System.out.print("Seconds (0-59): ");
        int s = sc.nextInt();

        if (h >= 0 && h < 24 && m >= 0 && m < 60 && s >= 0 && s < 60) {
            Clock c = new Clock(h, m, s);
            c.showTime();
        } else {
            System.out.println("Invalid time entered.");
        }

        sc.close();
    }
}
