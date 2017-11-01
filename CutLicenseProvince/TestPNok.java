package com.mcnewz.demo;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TestPNok {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String text = "11ab11USA";
		String wordToFind = "11";

		Pattern word = Pattern.compile(wordToFind);
		Matcher match = word.matcher(text);
		int x = 0;
		while (match.find()) {
			x = match.end()-1;
			System.out.println("Found love at index " + match.start() + " - " + (match.end() - 1));
		}

		System.out.println(x + "zzzz");
	}

}

// 11ab11USA
