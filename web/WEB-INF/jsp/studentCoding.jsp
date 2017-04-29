<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Project</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/validCoding/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/validCoding/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/validCoding/css/codingAnalysis.css">
</head>
<body>
    <jsp:include page="wjy_top_bar.jsp" />
    <div id="body-bar">
        <jsp:include page="wjy_left_menu.jsp" />

        <div class="col-md-10 col-sm-9">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                <div class="blank_div"></div>
                <div class="blank_div"></div>
                <div class="row">
                    <div class="col-lg-7"></div>
                    <div class="col-lg-5">
                        <div class="input-group">
                            <input id="name_input" type="text" class="form-control" placeholder="student">
                            <span class="input-group-btn">
                                <button id="search_button" class="btn btn-primary" type="button" onclick="search()">
                                    search
                                </button>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="blank_div"></div>
                <div id="student_name_panel">
                    <h2 id="student_name" class="name_title"></h2>
                </div>
                <div class="blank_div"></div>

                <div class="row container_panel">
                    <ul id = "iteration_nav" class="nav nav-tabs">
                        <li id="iteration1" role="presentation" class="my-li" onclick="tabSwitch(this.id)">
                            <a href="#">迭代一</a>
                        </li>
                        <li id="iteration2" role="presentation" class="my-li" onclick="tabSwitch(this.id)">
                            <a href="#">迭代二</a>
                        </li>
                        <li id="iteration3" role="presentation" class="my-li" onclick="tabSwitch(this.id)">
                            <a href="#">迭代三</a>
                        </li>
                    </ul>
                    <div class="blank_div"></div>

                    <div id="student_info_panel" class="student_info_panel">
                        <div class="blank_div"></div>
                        <div>
                            <h4 style="display: inline;" class="common_tittle">项目组号  </h4>
                            <code id="project_id"></code>
                        </div>
                        <div class="blank_div"></div>
                        <div class="blank_div"></div>
                        <div>
                            <h4 style="display: inline;" class="common_tittle">项目名称  </h4>
                            <code id="project_name"></code>
                        </div>
                        <div class="blank_div"></div>
                        <div class="blank_div"></div>
                        <div>
                            <h4 style="display: inline;" class="common_tittle">项目URL  </h4>
                            <code id="project_URL"></code>
                        </div>
                    </div>
                    <div class="blank_div"></div>
                    <div class="blank_div"></div>

                    <div class="row">
                        <%--student_valid_panel--%>
                        <div id="student_valid_panel" class="col-sm-6 col-xs-12 project_valid_panel" style="overflow: hidden;  margin-bottom: 20px;">
                            <div>
                                <h4 class="common_tittle">有效代码  </h4>
                            </div>
                            <div>
                                <div class="col-sm-12 col-xs-8 col-xs-offset-1">
                                    <canvas id="studentValidChart"></canvas>
                                </div>
                            </div>
                        </div>

                        <%--student_composition_panel--%>
                        <div id="student_composition_panel" class="col-sm-6 col-xs-12 project_composition_panel" style="overflow: hidden;">
                            <div>
                                <h4 class="common_tittle">代码组成</h4>
                            </div>
                            <div>
                                <div class="col-sm-12 col-xs-8 col-xs-offset-1">
                                    <canvas id="studentCompositionChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="blank_div"></div>
                </div>

            </div>

        </div>
    </div>


    <script src="${pageContext.request.contextPath}/static/validCoding/js/Chart.js" ></script>
    <script src="${pageContext.request.contextPath}/static/validCoding/js/studentCoding.js"></script>
</body>
</html>
