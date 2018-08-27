<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("kindeditor") != null ? request.getParameter("kindeditor") : "";
%>
<%!
	private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}
%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="${pageContext.request.contextPath }/statics/kindeditor/kindeditor-all-min.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath }/statics/kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath }/statics/kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[class="kindeditor"]', {
				cssPath : '${pageContext.request.contextPath }/statics/kindeditor/plugins/code/prettify.css',
                urlType:'domain',
				uploadJson : '/kindeditor/update_file.html',
				fileManagerJson : '/kindeditor/file_manage.html',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
<style>
	.kindeditor {
		width: 700px;
		height: 200px;
		visibility: hidden;
		border: 1px solid #000
	}
</style>
		<%--<textarea class="kindeditor" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;border: 1px solid #000"><%=htmlspecialchars(htmlData)%></textarea>--%>
