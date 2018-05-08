import java.util.stream.Collectors;

class RnaTranscription {

    String transcribe(String dnaStrand) {
        return dnaStrand.chars().mapToObj(c -> (char) c).map(c -> {
            switch (c) {
                case 'G':
                    return "C";
                case 'C':
                    return "G";
                case 'T':
                    return "A";
                case 'A':
                    return "U";
                default:
                    return c.toString();
            }
        }).collect(Collectors.joining());
    }

}
