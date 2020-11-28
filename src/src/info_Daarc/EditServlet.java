package info_Daarc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// �����R�[�h�̐ݒ�
		request.setCharacterEncoding("Windows-31J");

		// mode�̎擾
		String mode = request.getParameter("mode");
		//System.out.println("test");

		// ���s�X�e�[�^�X�̐錾
		String status = "�������܂���";
		//String message = ""; 

		// JavaBeans�̏�����
		AbcdBeans abc = new AbcdBeans(request);

		switch (mode) {

		case "add": // �o�^
			if (abc.addData() == false) {
				status = "���s���܂���";
				//message ="���͓��e�����m�F��������";
			}
			break;
		
		case "delete": // �폜
			if (abc.deleteData() == false) {
				status = "���s���܂���";
			}
			break;
		
		case "change": // �ύX
			request.setAttribute("abc", abc);
			request.getRequestDispatcher("/change.jsp").forward(request, response);
			return;

		case "del_add": // �ύX�m��
			if (!(abc.deleteData() && abc.addData())) {
				status = "���s���܂���";
			}
			break;
		
		}

		// status���Z�b�g���āAresult.jsp�ɓ]��
		request.setAttribute("status", status);
		request.getRequestDispatcher("/result.jsp").forward(request, response);

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


}
