import java.util.List;

/**
 * Created by nathanielellsworth on 9/28/16.
 */
public class Products {

    private String name;
    private int productNumber;
    private String discription;
    private double price;
    private String category;
    private List<Orders> orders;

    public Products(String name, int productNumber, String discription, double price, String category, List<Orders> orders) {
        this.name = name;
        this.productNumber = productNumber;
        this.discription = discription;
        this.price = price;
        this.category = category;
        this.orders = orders;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getProductNumber() {
        return productNumber;
    }

    public void setProductNumber(int productNumber) {
        this.productNumber = productNumber;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<Orders> getOrders() {
        return orders;
    }

    public void setOrders(List<Orders> orders) {
        this.orders = orders;
    }
}
