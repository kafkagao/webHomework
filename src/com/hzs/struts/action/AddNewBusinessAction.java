/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.hzs.struts.action;

import hibernate.Business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hzs.hibernate.db.HibernateSessionFactory;
import com.hzs.struts.form.AddNewBusinessForm;


public class AddNewBusinessAction extends Action {
	/*
	 * Generated Methods
	 */

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		AddNewBusinessForm addNewBusinessForm = (AddNewBusinessForm) form;

		String businessId = addNewBusinessForm.getBusinessId();
		String businessName = addNewBusinessForm.getBusinessName();
		String address = addNewBusinessForm.getAddress();
		String businessTel = addNewBusinessForm.getBusinessTel();
		String businessClass = addNewBusinessForm.getBusinessClass();
		String buildDate = addNewBusinessForm.getBuildDate();

		Business business = new Business(businessId, businessName,
				address, businessTel, businessClass, buildDate);

		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		session.save(business);
		session.flush();
		session.clear();

		tx.commit();

		return mapping.findForward("addNewBusiness");
	}
}
