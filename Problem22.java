import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Problem22 {
    public static void main(String[] args) {
        if (args.length != 1)
            return;

        String file = args[0];

        List<String> lines = readFile(file);
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

    private static List<String> readFile(String file) {
        List<String> lines = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                lines.add(line);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return lines;
    }
}
