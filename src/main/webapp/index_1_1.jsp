<%@ page import="java.io.BufferedReader,java.io.IOException,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.MalformedURLException,java.net.URL" %>
<%
        String clientId = "70c966fa679e55692c953ca359c3b6fd"; //Replace with your client ID
        String clientSecret = "ddaf033b2693a30689768c71e97424efe41215750fb7069d10fd202619f9ee6d"; //Replace with your client Secret
        String input_name;
        input_name = request.getParameter("inputAddress");
        out.print(input_name);
        String script = input_name;
        String language = "C";
        String versionIndex = "5";
        out.print("Output from JDoodle .... \n");
        try {
            URL url = new URL("https://api.jdoodle.com/v1/execute");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");

            String input = "{\"clientId\": \"" + clientId + "\",\"clientSecret\":\"" + clientSecret + "\",\"script\":\"" + script +
            "\",\"language\":\"" + language + "\",\"versionIndex\":\"" + versionIndex + "\"} ";

            out.print(input);

            OutputStream outputStream = connection.getOutputStream();
            outputStream.write(input.getBytes());
            outputStream.flush();

            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
//                throw new RuntimeException("Please check your inputs : HTTP error code : "+ connection.getResponseCode());
            }

            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new InputStreamReader(
            (connection.getInputStream())));

            String output;
            out.print("Output from JDoodle .... \n");
            while ((output = bufferedReader.readLine()) != null) {
                out.print(output);
            }

            connection.disconnect();

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    %>