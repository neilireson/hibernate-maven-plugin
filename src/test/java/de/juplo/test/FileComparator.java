package de.juplo.test;

import com.github.difflib.DiffUtils;
import com.github.difflib.patch.AbstractDelta;
import com.github.difflib.patch.Patch;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.stream.Collectors;


public class FileComparator {
    private final File basedir;
    private BufferedReader expectedReader;
    private BufferedReader foundReader;

    public FileComparator(File basedir) {
        this.basedir = basedir;
    }

    public boolean isEqual(final String expectedFilename, final String foundFilename)
            throws
            IOException {

        Path expected = new File(basedir, expectedFilename).toPath();
        Path found = new File(basedir, foundFilename).toPath();
        if (!Files.isRegularFile(expected))
            throw new FileNotFoundException("Expected file does not exist: " + expected.toAbsolutePath());
        if (!Files.isRegularFile(found))
            throw new FileNotFoundException("Found file does not exist: " + found.toAbsolutePath());

        //build simple lists of the lines of the two testfiles
        List<String> original = Files.readAllLines(expected).stream().map(String::trim).collect(Collectors.toList());
        List<String> revised = Files.readAllLines(found).stream().map(String::trim).collect(Collectors.toList());

        //compute the patch: this is the diffutils part
        Patch<String> patch = DiffUtils.diff(original, revised);

        //simple output the computed patch to console
        if (!patch.getDeltas().isEmpty()) {
            for (AbstractDelta<String> delta : patch.getDeltas())
                System.err.println(delta);
            return false;
        }
        return true;
    }
}
