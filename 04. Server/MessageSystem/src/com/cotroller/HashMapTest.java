package com.cotroller;

import java.util.HashMap;

public class HashMapTest {

	public static void main(String[] args) {
		// HashMap
		// - 값을 저장할 때 Key, Value 형태로 저장 (파이썬의 딕셔너리와 비슷)
		// - Value는 중복을 허용하지만, Key 값은 중복이 안 된다
		// - HashMap<key DataType, Value DataType> h = new HashMap<>();

		
		// 사용 예시
		// HashMap에 "이름":"송은지" 저장하기
		HashMap<String, String> map = new HashMap<>();
		map.put("이름", "송은지");
		
		// key 값에 저장된 value 불러오기
		String name = map.get("이름");
		System.out.println(name);
		// java 390p
}
}
