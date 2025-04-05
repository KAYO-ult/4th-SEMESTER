public class Ass5_1 {
    public static void main(String[] args) {
        System.out.println("Main thread is running");

        MyThread childThread = new MyThread();
        childThread.start(); 

        try {
            childThread.join(); 
        } catch (InterruptedException e) {
            System.out.println("Main thread interrupted");
        }

        System.out.println("Main thread has finished");
    }
}

class MyThread extends Thread {
    @Override
    public void run() {
        System.out.println("Child thread is running");
    }
}