package com.estore.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.estore.dao.DanhMucSanPhamDao;
import com.estore.entity.DanhMucSanPham;

@Component
public class ShareInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	DanhMucSanPhamDao dao;

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		List<DanhMucSanPham> list = dao.findAll();
		request.setAttribute("danhmucSP", list);
	}
}
