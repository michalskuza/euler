import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Problem22 {
    public static void main(String[] args) throws IOException {
        if (args.length != 1)
            return;

        String file = args[0];

        List<String> lines = Files.readAllLines(Paths.get(file), StandardCharsets.UTF_8);
        List<String> names = processLines(lines);
        Collections.sort(names);

        int totalScore = 0;
        int counter = 1;

        for (String name : names) {
            totalScore += counter * calculateScore(name);
            counter++;
        }

        System.out.println("total of all the name scores = " + totalScore);
    }

    private static int calculateScore(String name) {
        int score = 0;
        int offset = 64;
        for (char c : name.toCharArray()) {
            score += c - offset;
        }
        return score;
    }

    private static List<String> processLines(List<String> lines) {
        List<String> allNames = new ArrayList<>();
        for (String s : lines) {
            String[] names = s.split(",");

            for (String name : names) {
                allNames.add(name.substring(1, name.length() - 1));
            }
        }
        return allNames;
    }
}
