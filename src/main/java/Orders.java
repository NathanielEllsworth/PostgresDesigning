import java.util.Date;
import java.util.List;

/**
 * Created by nathanielellsworth on 9/28/16.
 */
public class Orders {


    private int orderNumber;
    private Date deliveryDate;
    private Date orderDate;
    private double cost;
    private List<Products> products;
    private List<Address> address;
    private List<Customers> customers;

    public Orders(int orderNumber, Date deliveryDate, Date orderDate, double cost, List<Products> products, List<Address> address, List<Customers> customers) {
        this.orderNumber = orderNumber;
        this.deliveryDate = deliveryDate;
        this.orderDate = orderDate;
        this.cost = cost;
        this.products = products;
        this.address = address;
        this.customers = customers;
    }

    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public List<Products> getProducts() {
        return products;
    }

    public void setProducts(List<Products> products) {
        this.products = products;
    }

    public List<Address> getAddress() {
        return address;
    }

    public void setAddress(List<Address> address) {
        this.address = address;
    }

    public List<Customers> getCustomers() {
        return customers;
    }

    public void setCustomers(List<Customers> customers) {
        this.customers = customers;
    }
}
