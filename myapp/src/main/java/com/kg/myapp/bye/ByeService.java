package com.kg.myapp.bye;

import org.springframework.stereotype.Service;

@Service
public class ByeService implements IByeService {

	@Override
	public String sayBye(String memo) {
		return "BYE" + memo;
	}
	
}
