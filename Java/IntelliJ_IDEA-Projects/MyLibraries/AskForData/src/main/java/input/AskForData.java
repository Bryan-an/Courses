package input;

import java.io.*;
import java.util.function.Predicate;

public class AskForData {

    //Fields
    private static BufferedReader reader
            = new BufferedReader(new InputStreamReader(System.in));

    //Methods

    /**
     * Method that asks for an integer without a filter.
     *
     * @param request The request to the user.
     * @return The valid integer.
     */
    public static int askForInt(String request) {
        int number = 0;
        boolean valid;

        do {
            valid = false;
            try {
                System.out.println(request);
                number = Integer.parseInt(reader.readLine());
                valid = true;
            } catch (Exception e) {
                System.out.println("\nDato inválido, intente de nuevo");
            }
        } while (!valid);

        return number;
    }

    /**
     * Method that asks for an integer with a filter.
     *
     * @param request      The request to the user.
     * @param filter       The integer filter.
     * @param errorMessage The error message if the filter returns false.
     * @return The valid integer.
     */
    public static int askForInt(String request, Predicate<Integer> filter,
                                String errorMessage) {

        int number = 0;
        boolean valid;

        do {
            valid = false;
            try {
                System.out.println(request);
                number = Integer.parseInt(reader.readLine());
                if (filter.test(number)) {
                    valid = true;
                } else {
                    System.out.println(errorMessage);
                }
            } catch (Exception e) {
                System.out.println("\nDato inválido, intente de nuevo");
            }
        } while (!valid);

        return number;
    }

    /**
     * Method that asks for a long without a filter.
     *
     * @param request The request to the user.
     * @return The valid long.
     */
    public static long askForLong(String request) {
        long number = 0;
        boolean valid;

        do {
            valid = false;
            try {
                System.out.println(request);
                number = Long.parseLong(reader.readLine());
                valid = true;
            } catch (Exception e) {
                System.out.println("\nDato inválido, intente de nuevo");
            }
        } while (!valid);

        return number;
    }

    /**
     * Method that asks for a long with a filter.
     *
     * @param request      The request to the user.
     * @param filter       The long filter.
     * @param errorMessage The error message if the filter returns false.
     * @return The valid long.
     */
    public static long askForLong(String request, Predicate<Long> filter,
                                  String errorMessage) {

        long number = 0;
        boolean valid;

        do {
            valid = false;
            try {
                System.out.println(request);
                number = Long.parseLong(reader.readLine());
                if (filter.test(number)) {
                    valid = true;
                } else {
                    System.out.println(errorMessage);
                }
            } catch (Exception e) {
                System.out.println("\nDato inválido, intente de nuevo");
            }
        } while (!valid);

        return number;
    }

    /**
     * Method that asks for a double without a filter.
     *
     * @param request The request to the user.
     * @return The valid double.
     */
    public static double askForDouble(String request) {
        double number = 0;
        boolean valid;

        do {
            valid = false;
            try {
                System.out.println(request);
                String aux = reader.readLine().replace(',', '.');
                number = Double.parseDouble(aux);
                valid = true;
            } catch (Exception e) {
                System.out.println("\nDato inválido, intente de nuevo");
            }
        } while (!valid);

        return number;
    }

    /**
     * Method that asks for a double with a filter.
     *
     * @param request      The request to the user.
     * @param filter       The double filter.
     * @param errorMessage The error message if the filter returns false.
     * @return The valid double.
     */
    public static double askForDouble(String request, Predicate<Double> filter,
                                      String errorMessage) {

        double number = 0;
        boolean valid;

        do {
            valid = false;
            try {
                System.out.println(request);
                String aux = reader.readLine().replace(',', '.');
                number = Double.parseDouble(aux);
                if (filter.test(number)) {
                    valid = true;
                } else {
                    System.out.println(errorMessage);
                }
            } catch (Exception e) {
                System.out.println("\nDato inválido, intente de nuevo");
            }
        } while (!valid);

        return number;
    }

    /**
     * Method that asks for a String without a filter.
     *
     * @param request The request to the user.
     * @return The valid String.
     */
    public static String askForString(String request) {
        String datum = null;
        boolean valid = false;

        do {
            System.out.println(request);
            try {
                datum = reader.readLine();
                valid = true;
            } catch (IOException ex) {
                System.out.println("\nError");
            }
        } while (!valid);

        return datum;
    }

    /**
     * Method that asks for a String with a filter.
     *
     * @param request      The request to the user.
     * @param filter       The String filter.
     * @param errorMessage The error message if the filter returns false.
     * @return The valid String.
     */
    public static String askForString(String request, Predicate<String> filter,
                                      String errorMessage) {

        String datum = null;
        boolean valid;

        do {
            valid = false;
            System.out.println(request);
            try {
                datum = reader.readLine();
            } catch (IOException ex) {
                System.out.println("\nError");
            }
            if (filter.test(datum)) {
                valid = true;
            } else {
                System.out.println(errorMessage);
            }
        } while (!valid);

        return datum;
    }
}
