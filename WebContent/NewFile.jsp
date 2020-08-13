
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script>
        $(document).ready(function(){
            $("#btn1").click(function(){
                $("#div1").load("./txt/demo_test.txt");
            });
        });

        
        $(document).ready(function(){

                   $("#btn2").click(function(){
                $("#div1").load("./txt/demo_test.txt #p1");
            });
        });
        $(document).ready(function(){
            $("#btn3").click(function(){
                $("#div1").load("./txt/demo_test.txt", function(reponseTxt, statusTxt, xhr){
                    if(statusTxt=="success")
                        alert("외부 파일이 성공적으로 load되었습니다!");
                    if(statusTxt=="error")
                        alert("Error: "+xhr.status +": "+xhr.statusTxt); 
                });
            });
        });
        
        //Get&Post
        $(document).ready(function(){
            $("#btnGet").click(function(){
                $.get("./txt/demo_test.asp", function(data, status){
                    alert("데이타: "+ data + "\n상태: "+status);
                });
            });
        });
        $(document).ready(function(){
            $("#btnPost").click(function(){
                $.post("./txt/demo_test2.asp",{
                    name : "Donald Duck",
                    city : "Duckburg"
                },
                function(data,status){
                    alert("데이타: "+data+"\n상태: "+status);
                })
            });
        });
    </script>
</head>
<body>
    
    <h1>jQuery Ajax</h1>

    <div id="div1"><h3>jQuery Ajax</h3></div>
    <button id="btn1">불러오기</button>
    <button id="btn2">특정부분 불러오기</button>

    <p>load()를 할 때에, load가 성공적으로 되었는지 확</p>
    <button id="btn3">Error check</button>
</body>
</html>