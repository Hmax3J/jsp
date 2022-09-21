<head>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='java.util.List' %>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
<link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css' />
<title>hr</title>
<%
	LaborerService laborerService = new LaborerServiceImpl();
%>
<script>
const laborers = []
let laborerId = 0

function isVal(field) {
    let isGood = false
    let errMsg

    if(!field.length) errMsg = '노동자를 선택하세요.'
    else {
        if(!field.val()) errMsg = field.attr('placeholder') + ' 입력하세요.'
        else isGood = true
    }

    if(!isGood) {
        $('#modalMsg').text(errMsg).css('color', 'red')
        $('#modalBtn').hide()
        $('#modal').modal()
    }

    return isGood
}

function listLaborers() {
    $('input').not(':radio').val('')
    $('#laborers').empty()
<%
	List<Laborer> laborers = laborerService.getLaborers();
    if(laborers.size() > 0) {
%>
		const laborerArr = []
<%
		for(Laborer laborer: laborers) {
%>
			laborerArr.unshift(
		        `<tr>
		            <td><input type='radio' name='laborerId' id='laborerId'
		                    value=<%= laborer.getLaborerId() %>></input></td>
		            <td><%= laborer.getLaborerId() %></td>
		            <td><%= laborer.getName() %></td>
		            <td><%= laborer.getHireDate() %></td>
		        </tr>`
    		)
<%
		}
%>
		$('#laborers').append(laborerArr.join(''))
<%
    } else {
%>
		$('#laborers').append(
		'<tr><td colspan=4 class=text-center>노동자가 없습니다.</td></tr>')
<%
    }
%>
}

function formSubmit() {
	$('form').submit()
}

function init() {
    $('#addLaborerBtn').click(() => {
        if(isVal($('#laborerName')) && isVal($('#hireDate'))) {
        	$('form').attr('action', 'com/my/hr/laborerAdd.jsp')
            formSubmit()
            listLaborers()
        }
    })
    
    $('#fixLaborerBtn').click(() => {
        if(isVal($('#laborerId:checked')) &&
            isVal($('#laborerName')) && isVal($('#hireDate'))) {
                $('form').attr('action', 'com/my/hr/laborerFix.jsp')
                formSubmit()
                listLaborers()
            }
    })

    $('#delLaborerBtn').click(() => {
        if(isVal($('#laborerId:checked'))) {
            $('#modalMsg').text('노동자를 삭제하시겠습니까?')
            $('#modalBtn').show()
            $('#modal').modal()
        }
    })

    $('#delLaborerOkBtn').click(() => {
        $('#modal').modal('hide')
        $('form').attr('action', 'com/my/hr/laborerDel.jsp')
        formSubmit()
        listLaborers()
    })

    $('#laborers').on({
        change() {
            $('#laborerName').val($(this).parent().next().next().text())
            $('#hireDate').val($(this).parent().next().next().next().text())
        }
    }, '#laborerId')
}

$(listLaborers)
$(init)
</script>
<style>
#hireDate::before {
    content: attr(placeholder);
    width: 100%;
}

#hireDate:focus::before, #hireDate:valid::before {
    display: none;
}
</style>
</head>

<div class='container'>
    <div class='row'>
        <div class='col'>
            <header class='jumbotron p-2'>
                <h1 class='text-center'>HR</h1>
            </header>
        </div>
    </div>
    <div class='row'>
        <div class='col'>
            <form method='post'>
                <div class='row mb-3'>
                    <div class='col-2'>
                        <input type='text' class='form-control' placeholder='노동자명' id='laborerName' name='laborerName'/>
                    </div>
                    <div class='col-4'>
                        <input type='date' class='form-control' placeholder='입사일' id='hireDate' name='hireDate' required/>
                    </div>
                    <div class='col'>
                        <nav class='d-flex'>
                            <button type='button' class='btn btn-success flex-fill mr-1' id='addLaborerBtn'>
                                <i class='fas fa-plus'></i>
                                <span class='label d-none d-sm-inline'>추가</span>
                            </button>
                            <button type='button' class='btn btn-info flex-fill mr-1' id='fixLaborerBtn'>
                                <i class='fas fa-edit'></i><span class='label d-none d-sm-inline'>수정</span>
                            </button>
                            <button type='button' class='btn btn-warning flex-fill' id='delLaborerBtn'>
                                <i class='fas fa-trash-alt'></i><span class='label d-none d-sm-inline'>삭제</span>
                            </button>
                        </nav>
                    </div>
                </div>
                <div class='row'>
                    <div class='col'>
                        <table class='table'>
                            <thead>
                                <tr><th></th><th>ID</th><th>이름</th><th>입사일</th></tr>
                            </thead>
                            <tbody id='laborers'>
                                <tr><td colspan='4' class='text-center'>노동자가 없습니다.</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class='modal fade' tabindex='-1' id='modal'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header'>
                <button type='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body'>
                <p id='modalMsg'></p>
            </div>
            <div class='modal-footer' id='modalBtn'>
                <button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
                <button type='button' class='btn btn-primary' id='delLaborerOkBtn'>예</button>
            </div>
        </div>
    </div>
</div>