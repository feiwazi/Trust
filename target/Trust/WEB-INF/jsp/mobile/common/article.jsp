<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 内页小导航 -->
<div class="cont_small_nav" style="margin-top:0.5em; background:#fff;">
    <img src="${pageContext.request.contextPath }/statics/images/cont_nav1.png" class="img-bg"/>
    <img src="${pageContext.request.contextPath }/statics/images/small_nav1.jpg" class="small_img1"/>
    <ul class="small_ul">
        <li><a href='${pageContext.request.contextPath }/'>主页</a> >  <a
                href="${pageContext.request.contextPath }/article.html/${article.id}">${article.title}</a>
        </li>
    </ul>
</div>
    <div class="article-box">
        <div class="article-info">
            <span class="title">${article.title}</span>
            <c:if test="${article.type!='introduce'}">
            <span class="time">阅读量:<script>document.write(parseInt(5000*Math.random()+5000));</script>&#12288;咨询量:<script>document.write(parseInt(3000*Math.random()+3000));</script>&#12288;解决问题:<script>document.write(parseInt(2200*Math.random()+800));</script>
             </c:if>
       </span>
        </div>
        <div class="article-wxts">
            <span><font>温馨提示：</font>为节省您的手机流量,文章内容简短,有任何疑问可<a href="">点击咨询</a>医生与医生在线交流。</span>
            <div class="article-hh"><input type="text" class="input_1" placeholder="输入您的电话，医生为您来电" id='dede'>
                <a href="tel:0359-2513939" class="zx-call">点击接听</a></div>
        </div>
        <div class="article-content">${article.content}</div>

