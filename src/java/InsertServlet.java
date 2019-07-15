
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.naming.*;
import java.util.*;
import Models.*;
import DAO.*;

/**
 *
 * @author SHIOKO
 */
@WebServlet(urlPatterns = {"/InsertServlet"})
public class InsertServlet extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			/* TODO output your page here. You may use following sample code. */
			try {
				InitialContext ic = new InitialContext();
				Context envCtx = (Context) ic.lookup("java:comp/env");

				String cs = (String) envCtx.lookup("cs");
				out.println(cs);

				Random rand = new Random();

				// insert banners
//String[] bannerImages = {"images/sushi_01.jpg", "images/sushi_02.jpg", "images/sushi_03.jpg"};
//
//String[] bnTitles = {"24 types of sushi rolls",};
//
//String[] bnDesc = {
//    "Order sushi Now!\n" + "Free Delivery!\n" + "Sampler, Lunch and Banquet. $20.00 minimum order\n"
//    + "Red Octopussy Sauce with every order",
//    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr.\n"
//    + "sed diam nonumy eirmod tempor invidunt ut labore et.",
//    "dolore magna aliquyam erat, sed diam voluptua.\n"
//    + "At vero eos et accusam et justo duo dolores et ea rebum.",
//    "Stet clita kasd gubergren, no sea takimata sanctus est\n"
//    + "Lorem ipsum dolor sit amet."};
//
//Banner b = new Banner();
//b.setTitle(bnTitles[0]);
//b.setImg(bannerImages[1]);
//b.setDesc(bnDesc[0]);
//
//for (int i = 0; i < 20; i++) {
//    String ti = randomPara(rand, 4 + rand.nextInt(10));
//    String im = bannerImages[rand.nextInt(bannerImages.length)];
//    String de = bnDesc[rand.nextInt(bnDesc.length)];
//    Banner ba = new Banner();
//    ba.setTitle(ti);
//    ba.setImg(im);
//    ba.setDesc(de);
//    out.println("Title: " + ti);
//    out.println("Img: " + im);
//    out.println("Desc: " + de);
//    SushiDAO.insertBanner(ba);
//}
//SushiDAO.insertBanner(b);
				// insert menu and food
				String[] tts = {
					"Variety fresh sushi rolls and sauce",
					"fresh sushi r",
					"fresh sushi",};
				String[] descs = {
					"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
					"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
					"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",};

				String[][] fs = {
					{},
					{
						"sushi sampler",},
					{
						"sushi sampler",
						"sushi and variety rolls",
						"sushi and dinner rolls",
						"sushi rolls and lunch menu",}
				};
				float[][] ps = {
					{},
					{20f},
					{
						20f,
						25f,
						20f,
						15f
					}
				};
				for (int i = 0; i < tts.length; i++) {
					String mt = tts[i];
					String md = descs[i];
					Menu menu = new Menu();
					menu.setName(mt);
					menu.setDesc(md);

					SushiDAO.insertMenu(menu);

					for (int j = 0; j < fs[i].length; j++) {
						String foodName = fs[i][j];
						float pc = ps[i][j];
						Food food = new Food();
						food.setName(foodName);
						food.setPrice(pc);
						food.setMenuName(mt);
						SushiDAO.insertFood(food);
					}
				}
			} catch (Exception e) {
				out.println(e.getStackTrace().toString());
				e.printStackTrace();
			}
		}
	}
	public static final String alpha = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	public static String randomWord(Random rand) {
		int length = 2 + rand.nextInt(5);
		String word = "";
		for (int i = 0; i < length; i++) {
			word += alpha.charAt(rand.nextInt(alpha.length()));
		}
		return word;
	}

	public static String randomPara(Random rand, int length) {
		String para = "";
		for (int i = 0; i < length; i++) {
			para += randomWord(rand);
			para += " ";
		}
		para += randomWord(rand);
		return para;
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
	// + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
