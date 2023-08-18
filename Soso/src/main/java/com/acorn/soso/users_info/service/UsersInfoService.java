package com.acorn.soso.users_info.service;

import org.springframework.ui.Model;

public interface UsersInfoService {
	public void getWritingList(Model model);
	public void getCommentList(Model model);
	public void getSupportList(Model model);
	public void getBookmarkList(Model model);
}
