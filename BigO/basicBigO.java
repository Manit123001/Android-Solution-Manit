package com.mcnewz.home.test;

import java.util.Arrays;

public class TestBigO {
	public static void main(String arg[]) {
		System.out.println("Hello");
		// nFacRuntimeFunc(3);
		int[] x = { 2, 3, 2, 4, 5, 6, };
		int[] z = new int[10];
		z[0] = 1;
		z[1] = 2;

		// printFirstItem(x);
		printAllItems(x);
	}

//	static void nFacRuntimeFunc(int n) {
//		for (int i = 0; i < n; i++) {
//			System.out.println("***" + i);
//			System.out.println(n);
//			nFacRuntimeFunc(n - 1);
//		}
//	}

	// Big O = O(1) = 1 ครับ เพราะไม่มี loop อะไรเลย ส่วน constant ตัดทิ้ง
	public static void printFirstItem(int[] arrayOfItems) {
		System.out.println(arrayOfItems[0]); // constant
	}

	// Big O = O(n) * O(1) = O(n) นึกเป็นคำพูดในหัวง่ายๆ ทำ n รอบ แต่ละรอบ ทำ
	// constant 1 ครั้ง
	public static void printAllItems(int[] arrayOfItems) {
		for (int item : arrayOfItems) { // O(n)
			System.out.println(item); // constant
		}
	}

	// Big O = O(n²) เพราะมี 2-nested loop
	public static void printAllPossibleOrderedPairs(int[] arrayOfItems) {
		for (int firstItem : arrayOfItems) { // O(n)
			for (int secondItem : arrayOfItems) { // O(n)
				int[] orderedPair = new int[] { firstItem, secondItem }; // constant
				System.out.println(Arrays.toString(orderedPair)); // constant
			}
		}
	}

	// Big O = O(n) + O(n) = O(2n) = O(n) ที่เอามาบวกกันเพราะว่าเป็น loop
	// ที่อยู่ level เดียวกัน ไม่ได้ซ้อน nested เข้าไป
	// แต่สุดท้ายเราก็ตัดเลขสองออกอยู่ดี ตามหลักการข้อสี่ที่กล่าวไปแล้ว คือ
	// เมื่อ n เพิ่มเยอะมากขึ้นเรื่อยๆ การคูณด้วยค่าคงที่ ถือว่าไม่มีนัยสำคัญ
	// อารมณ์เหมือน 100M กับ 200M มิลลิวินาที ก็เยอะทั้งคู่อยู่ดีครับ
	public void printAllItemsTwice(int[] theArray) {
		for (int item : theArray) { // O(n)
			System.out.println(item);
		}
		for (int item : theArray) { // O(n)
			System.out.println(item);
		}
	}

	// Big O = O(n) + O(n²) = O(n²) เนื่องจากอยู่ level เดียวกัน เลยเอามาบวกกัน
	// แต่สุดท้ายก็ตัดเหลือเฉพาะ term ที่ค่า n ส่งผลเยอะที่สุดอยู่ดี
	public void printAllNumbersThenAllPairSums(int[] arrayOfNumbers) {
		System.out.println("these are the numbers:");
		    for (int number : arrayOfNumbers) { // O(n)
		        System.out.println(number);
		    }
		System.out.println("and these are their sums:");
		// O (n^2)
		    for (int firstNumber : arrayOfNumbers) {
		        for (int secondNumber : arrayOfNumbers) {
		            System.out.println(firstNumber + secondNumber);
		        }
		    }
		}

	public static void bigO(){

		// Big O = O(2n) = O(n) อยู่ดี
		int n =2;
		for(int i = 0;i<2*n;i++){ // O(2n)
//			 cout << i << endl;
		}	
		
		// Big O = O(n) * O(1) = O(n) อันนี้ไม่ใช่เห็น 2-nested loop แล้วจัด O(n²) เลย ผิดนะครับ เพราะ inner-loop เป็น O(1) นะ
		for(int i = 0; i < n; i++) { // O(n)
		    for(int j = 0; j < 2; j++) { // O(1)
		      // do stuff
		    }
		}
		
		// Big O = O(n) * O(log n) = O(n log n) นะครับ สังเกตว่า inner-loop ค่า j จะเพิ่มทีละ 2 เท่า ของ j เดิม ณ ขณะนั้น มันเลยใช้เวลาน้อยครับ ไปตกอยู่ช่วงของ log n นั่นเอง
		for(int i = 0; i < n; i++) { // O(n)
		    for(int j = 1; j <= n; j *= 2) { // O(log n)
		      // do constant time stuff
		    }
		}
		// Big O = O(n) * O(n) = O(n²) ถึงแม้จะไม่มี nested-loop แต่ใน condition มันเป็น n*n นะ ไม่ใช่ n เฉยๆ ระวังๆ
		for(int i = 0; i < n*n; i++) { // O(n) * O(n)
//			  cout << i << endl;
		}
		
		
		//Big O = O(n) * O(n) * O(n) = O(n³) 3-nested loop เลยทีเดียวเชียว

//		for(j=1; j<=n; j++) { // O(n)
//		    for(k=1; k<=n; k++) { // O(n)
//		        c[j][k] = 1;
//		        for(l=1; l<=n; l++) { // O(n)
//		            c[j][k] = c[j][k] * b[l][k];
//		        }
//		    }
//
//		  
		
	}
	
	//Big O = O(n) * O(n-1) * O(n-2) * … * O(1) = O(n!) หวังว่าคงไม่มีใครทำนะครับ เพราะแค่ n = 10 Big O ก็ปา 3,628,800 แล้ว ลองใส่ไปสักเยอะๆ แล้วรันอัลกอริทึมดูสิครับ ก่อนทำแนะนำให้เช็คประกันคอมก่อนด้วยนะฮ้าฟฟ
	void nFacRuntimeFunc(int n) {
	    for(int i=0; i<n; i++) { // O(n)
	        nFacRuntimeFunc(n-1); // O(n-1)... because it is recursive
	    }
	}
	
	// Big O = O(n) * O(n) * O(n) = O(n³) ใน function A มีแค่ loop เดียวก็จริง แต่ในแต่ละรอบนั้นเรียก functionB ด้วยทุกครั้ง ทำให้เราต้องคูณ Big O ของ functionB เข้าไปกับ Big O ของ functionA ด้วยครับ
//	void functionA(int n) {
//	    for(j=1; j<=n; j++) { // O(n)
//	        functionB(n) // functionA calls to another function (functionB)
//	    }
//	}
//	void functionB(int n) {
//	    for(k=1; k<=n; k++) { // O(n)
//	        for(l=1; l<=n; l++) { // O(n)
//	            // do something
//	        }
//	    }
//	}

	
}
