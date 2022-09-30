public class Thread_Example3 extends Thread{  
 public void run(){  
  if(Thread.currentThread().isDaemon()){//checking for daemon thread  
   System.out.println("daemon thread work");  
  }  
  else{  
  System.out.println("user thread work");  
 }  
 }  
 public static void main(String[] args){  
	 Thread_Example3 t1=new Thread_Example3();//creating thread  
	 Thread_Example3 t2=new Thread_Example3();  
	 Thread_Example3 t3=new Thread_Example3();  
  
  t1.setDaemon(true);//now t1 is daemon thread  
    
  t1.start();//starting threads  
  t2.start();  
  t3.start();  
 }  
} 
