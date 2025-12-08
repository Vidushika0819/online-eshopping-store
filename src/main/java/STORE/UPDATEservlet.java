package STORE;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UPDATEservlet")
public class UPDATEservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String product_id=request.getParameter("product_id");
		String product_name=request.getParameter("product_name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
		String description=request.getParameter("description");
		
		boolean isTrue;
		isTrue = STOREcontrol.updatedata (product_id, product_name,quantity,price,description);
		
		if(isTrue==true) {
			
			List<STOREmodel> StoreDetails = STOREcontrol.getById(product_id);
			request.setAttribute("StoreDetails", StoreDetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='GETALLservlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,response);
		}
	}

}
