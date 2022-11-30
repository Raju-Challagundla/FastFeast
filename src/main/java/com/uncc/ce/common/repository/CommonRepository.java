package com.uncc.ce.common.repository;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * The Class CommonRepository.
 * @author rajuchallagundla
 */
@Repository
public class CommonRepository {
	
	/** The entity manager. */
	@Autowired
	private EntityManager entityManager;

	/**
	 * Calculate avg rating by restaurant id.
	 *
	 * @param restId the rest id
	 * @return the float
	 */
	public Float calculateAvgRatingByRestaurantId(int restId) {
		Query query = entityManager.createQuery("SELECT ROUND(AVG(r.restaurantRating),2) FROM Rating r,Orders ord WHERE r.order.orderId = ord.orderId and ord.restaurant.restaurantId = :restId");
		query.setParameter("restId", restId);
		Double actual = (Double) query.getSingleResult();
		return actual != null ? actual.floatValue() : null;
	};
	
	/**
	 * Calculate avg rating by driver id.
	 *
	 * @param restId the rest id
	 * @return the float
	 */
	public Float calculateAvgRatingByDriverId(int restId) {
		Query query = entityManager.createQuery("SELECT ROUND(AVG(r.driverRating),2) FROM Rating r,Orders ord WHERE r.order.orderId = ord.orderId and ord.driver.driverId = :restId");
		query.setParameter("restId", restId);
		Double actual = (Double) query.getSingleResult();
		return actual != null ? actual.floatValue() : null;
	};
	
	/**
	 * Calculate avg rating by item id.
	 *
	 * @param restId the rest id
	 * @return the float
	 */
	public Float calculateAvgRatingByItemId(int restId) {
		Query query = entityManager.createQuery("SELECT ROUND(AVG(r.itemRating),2) FROM Rating r WHERE r.items.itemId = :restId");
		query.setParameter("restId", restId);
		Double actual = (Double) query.getSingleResult();
		return actual != null ? actual.floatValue() : null;
	};
}