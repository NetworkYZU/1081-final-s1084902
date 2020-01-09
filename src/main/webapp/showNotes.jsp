<%@page import="lendle.courses.wp.finalexam.Note"%>
<%@page import="lendle.courses.wp.finalexam.UserData"%>
<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.21/vue.min.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    </head>
    <body>
        <a href="logout.jsp">登出</a><br/>
      
      <!--
      將目前 session 中記錄的 user 的 notes 顯示在下列表格中
      (20%)
      -->
      <table border="1" style="width: 90%">
          <thead>
              <tr>
                  <th>Date</th>
                  <th style="width: 150px"><span id="Date"></span></th>
                  <th>Title</th>
                  <th><span id="Title"></span></th>
                  <th>Content</th>
                  <th><span id="Content"></span></th>
              </tr>
          </thead>
          <tbody>
              <script>
              $.ajax("https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap" , {
                data:{                    
                    appid: "SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"                   
                },
                success: function(data) {
                    $("#date").text(data.main.date);
                    $("#title").text(data.main.title);
                    $("#content").text(data.bootstrap.content);
                    console.log(data.main.date);
                    console.log(data.main.title);
                    console.log(data.bootstrap.content);
                }
            });
            </script>
          </tbody>
      </table>
    </body>
</html>