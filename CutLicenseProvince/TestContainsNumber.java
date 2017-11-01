package com.mcnewz.demo;

import java.util.regex.Matcher;
import java.util.regex.Pattern;import javax.swing.plaf.SliderUI;

public class TestContainsNumber {
	public static void main(String[] args) {
		String str = "abc9999";
		// System.out.println(extractNumber(st));
		// System.out.println(extractNumber(st).length());

		// System.out.println(lastDigit(123456));

//		String[] tests = { "jamesBond007", "ra12ke43sh57", "-42", "x888y999", "00000" };
//		for (String test : tests) {
//			System.out.println(nextId(test));
//		}
		
		String s = new String("1กข1234กรุงเทพมหานคร");
		Matcher matcher = Pattern.compile("\\w\\d+").matcher(s);
		matcher.find();
//		int i = Integer.valueOf(matcher.group());
//		System.out.println(i);
		String textCut = matcher.group();
//		System.out.println(textCut);

		Pattern word = Pattern.compile(textCut);
		Matcher match = word.matcher(s);
		int xIndex = 0;
		while (match.find()) {
			xIndex = match.end();
//			System.out.println("Found love at index " + match.start() + " - " + (match.end() - 1));
		}

		System.out.println(s.substring(0, xIndex));

		System.out.println(s.substring(xIndex));
		
		
		
	}

	static String nextId(String id) {
		String[] parts = id.split("(?=\\d+$)", 2);
		
		System.out.println(parts[0]);
		final int L = parts[1].length();
		final int num = Integer.parseInt(parts[1]) + 1;
		return parts[0] + String.format("%0" + L + "d", num);
	}

	public static int lastDigit(int number) {
		return number % 10;
	}

	public static String extractNumber(final String str) {

		if (str == null || str.isEmpty())
			return "";

		StringBuilder sb = new StringBuilder();
		boolean found = false;
		for (char c : str.toCharArray()) {
			if (Character.isDigit(c)) {
				sb.append(c);

				found = true;

			} else if (found) {
				// If we already found a digit before and this char is not a
				// digit, stop looping
				break;
			}
		}

		return sb.toString();
	}
}
