<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:if test="${not empty message}">
   <div class="modal fade show d-block" tabindex="-1"
      aria-labelledby="exampleModalLiveLabel" aria-modal="true"
      role="dialog" onclick="modalClose()">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLiveLabel">${messageTitle}</h5>
            </div>
            <div class="modal-body">
               <p>${message}</p>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-danger" onclick="modalClose()"
                  data-bs-dismiss="modal">확인</button>
            </div>
         </div>
      </div>
   </div>
</c:if>
<script>
   function modalClose() {
      $('.modal').removeClass('show d-block');
   }
</script>