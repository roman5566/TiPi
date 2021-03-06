package tipi.bean;

/**
 * @author Lauri Soivi, Joona Viertola, Samuel Kontiomaa
 * @version 1.0
 * @since 18.12.2013
 */

public interface UserCompany {

	public int getCompany_id();
	
	public void setCompany_id(int company_id);
	
	public String getName();
	
	public void setName(String name);
	
	public String getAddress();
	
	public void setAddress(String address);
	
	public String getPostalCode();
	
	public void setPostalCode(String postalCode);
	
	public String getCity();
	
	public void setCity(String city);
	
}
