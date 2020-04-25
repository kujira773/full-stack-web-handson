
public class JavaMemory {
    public static void main(String... args){
    Runtime r = Runtime.getRuntime();
    System.out.println("version    :" + Runtime.version());
    System.out.println("maxMemory  :" + r.maxMemory());
    System.out.println("totalMemory:" + r.totalMemory());ß
    }
}