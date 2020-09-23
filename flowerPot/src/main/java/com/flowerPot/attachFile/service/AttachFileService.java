package com.flowerPot.attachFile.service;

import com.flowerPot.vo.AttachFileVo;

public interface AttachFileService {

	void insertAttachFile(AttachFileVo attachFile);

	void deleteAll();

	int selectCount();

}
