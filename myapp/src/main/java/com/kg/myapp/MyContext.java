package com.kg.myapp;

import java.lang.reflect.Field;

public class MyContext {

	private <T> T runAnnotation(T obj) throws IllegalArgumentException, IllegalAccessException {
		Field[] fields = obj.getClass().getDeclaredFields();
		for (Field field : fields) {
			MyAnnotation anno = field.getAnnotation(MyAnnotation.class);
			if (anno != null && field.getType() == (String.class)) {
				field.setAccessible(true);
				field.set(obj, anno.name());

			}
		}
		return obj;
	}

	//타입을 확인할 필요없고, autowired 로 만들어오기, String 타입이 아닌 직접 넣어준다.
	
	public <T> T getInstance(Class c) throws InstantiationException, IllegalAccessException {
		T obj = (T) c.newInstance();
		obj = runAnnotation(obj);
		return obj;
	}

}
