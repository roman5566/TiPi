package tipi.dao;

import tipi.bean.UserCompany;
import tipi.bean.UserProfile;

public interface UserDAO {

	public abstract UserProfile getRegisteredUsersInformationDAO(String userEmail, UserProfile userProfile);
	
	public abstract UserCompany getRegisteredUsersCompanyInformationDAO(int companyID, UserCompany userCompany);
	
	public abstract void registerNewCompanyDAO(UserCompany registerCompany);
	
}