import java.util.List;

/**
 * Created by nathanielellsworth on 9/28/16.
 */
public class Companies {

    private String name;
    private int dunsNumber;
    private List<Products> products;
    private List<Orders> orders;
    private List<Address> address;
    private List<Employees> employees;

    public Companies(String name, int dunsNumber, List<Products> products, List<Orders> orders, List<Address> address, List<Employees> employees) {
        this.name = name;
        this.dunsNumber = dunsNumber;
        this.products = products;
        this.orders = orders;
        this.address = address;
        this.employees = employees;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDUNs_Number() {
        return dunsNumber;
    }

    public void setDUNs_Number(int DUNs_Number) {
        this.dunsNumber = DUNs_Number;
    }

    public List<Products> getProducts() {
        return products;
    }

    public void setProducts(List<Products> products) {
        this.products = products;
    }

    public List<Orders> getOrders() {
        return orders;
    }

    public void setOrders(List<Orders> orders) {
        this.orders = orders;
    }

    public List<Address> getAddress() {
        return address;
    }

    public void setAddress(List<Address> address) {
        this.address = address;
    }

    public List<Employees> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employees> employees) {
        this.employees = employees;
    }
}
