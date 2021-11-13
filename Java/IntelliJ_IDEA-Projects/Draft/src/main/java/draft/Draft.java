package draft;

import java.util.stream.Stream;

public class Draft {
    private static Integer num = 1;

    public static void main(String[] args) {
        Stream.generate(() -> num *= 5).limit(5).forEachOrdered(System.out::println);
    }

}