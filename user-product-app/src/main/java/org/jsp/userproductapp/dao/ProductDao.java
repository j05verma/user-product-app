package org.jsp.userproductapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.jsp.userproductapp.dto.Product;
import org.jsp.userproductapp.dto.User;

public class ProductDao {
	EntityManager manager = Persistence.createEntityManagerFactory("dev").createEntityManager();

	public Product saveProduct(Product product, int user_id) {
		User u = manager.find(User.class, user_id);
		if (u != null) {
			u.getProducts().add(product); // adding the product to user
			product.setUser(u);// setting user to the product
			EntityTransaction transaction = manager.getTransaction();
			manager.persist(product);
			transaction.begin();
			transaction.commit();
			return product;
		}
		return null;
	}

	public Product updateProduct(Product product, int user_id) {
		User u = manager.find(User.class, user_id);
		if (u != null) {
			u.getProducts().add(product);// adding the products to the user
			product.setUser(u);// setting user to the product
			EntityTransaction transaction = manager.getTransaction();
			manager.merge(product);
			transaction.begin();
			transaction.commit();
			return product;
		}
		return null;
	}

	public Product findProductById(int id) {
		return manager.find(Product.class, id);
	}

	public boolean deleteProduct(int id) {
		Product p = findProductById(id);
		if (p != null) {
			manager.remove(p);
			EntityTransaction transaction = manager.getTransaction();
			transaction.begin();
			transaction.commit();
			return true;
		}
		return false;
	}

	public List<Product> findProductByUserId(int user_id) {
		Query q = manager.createQuery("select u.products from User u where u.id=?1");
		q.setParameter(1, user_id);
		return q.getResultList();
	}
}
