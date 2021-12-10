/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jdoodle;
/**
 *
 * @author kalam
 */
//package com.jdoodle;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class Jdoodle {
    public static void main(String args[]) {

        String clientId = "70c966fa679e55692c953ca359c3b6fd"; //Replace with your client ID
        String clientSecret = "2d53ffedfb0b95d4552d53693aa4bd3041588425416c02d5ad3629a6b73eb77d"; //Replace with your client Secret
//        String input_name;
//input_nainput_name = request.getParameter("inputAddress")
        String script = "#include <stdio.h>\n" +
"\n" +
"int main()\n" +
"{\n" +
"    printf(\"Hello World\");\n" +
"\n" +
"    return 0;\n" +
"}";
        String language = "c";
        String versionIndex = "5";

        try {
            URL url = new URL("https://api.jdoodle.com/v1/execute");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");

            String input = "{\"clientId\": \"" + clientId + "\",\"clientSecret\":\"" + clientSecret + "\",\"script\":\"" + script +
            "\",\"language\":\"" + language + "\",\"versionIndex\":\"" + versionIndex + "\"} ";

            System.out.println(input);

            OutputStream outputStream = connection.getOutputStream();
            outputStream.write(input.getBytes());
            outputStream.flush();

            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
                System.out.println("Please check your inputs : HTTP error code : "+ connection.getResponseCode());
            }

            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new InputStreamReader(
            (connection.getInputStream())));

            String output;
            System.out.println("Output from JDoodle .... \n");
            while ((output = bufferedReader.readLine()) != null) {
                System.out.println(output);
            }

            connection.disconnect();

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}