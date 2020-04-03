package com.tale.extension;

import io.netty.util.internal.StringUtil;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;

public class GetContentURL {

    public static String getContentFromUrl (String url)
    {
        String content = "";
        if (StringUtil.isNullOrEmpty(url)) return content;
        URLConnection connection = null;
        try {
            connection =  new URL(url).openConnection();
            Scanner scanner = new Scanner(connection.getInputStream());
            scanner.useDelimiter("\\Z");
            content = scanner.next();
            scanner.close();
        }catch ( Exception ex ) {
//            ex.printStackTrace();
        }
        return content;
    }

    public static String getUrlFromContent(String value, String a, String b) {
        // Return a substring between the two strings.
        int posA = value.indexOf(a);
        if (posA == -1) {
            return "";
        }
        int posB = value.lastIndexOf(b);
        if (posB == -1) {
            return "";
        }
        int adjustedPosA = posA + a.length();
        if (adjustedPosA >= posB) {
            return "";
        }
        return value.substring(adjustedPosA, posB);
    }

    public static String getTOC(String url) {
        String contentFromUrl = GetContentURL.getContentFromUrl(url);
        Reader temp = new StringReader(contentFromUrl);
        BufferedReader reader = new BufferedReader(temp);
        StringBuilder result = new StringBuilder();
        String line = null;
        try {
            line = reader.readLine();
            while (line != null) {
                if (line.length() > 2) {
                    if ("##".equals(line.substring(0, 2))) {
                        result.append(line.substring(1, line.length())).append("<br>");
                    }
                }

                line = reader.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result.toString();
    }
}
