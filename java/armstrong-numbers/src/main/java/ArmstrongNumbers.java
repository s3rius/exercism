import java.util.ArrayList;

class ArmstrongNumbers {

    boolean isArmstrongNumber(int numberToCheck) {
        ArrayList<Integer> list = new ArrayList();
        int power = 0;
        int source = numberToCheck;
        while (numberToCheck != 0) {
            list.add(numberToCheck % 10);
            numberToCheck /= 10;
            power++;
        }
        int finalPower = power;
        Double sum = list.stream().mapToDouble(i -> Math.pow(i, finalPower)).sum();
        return sum.intValue() == source;
    }

}
