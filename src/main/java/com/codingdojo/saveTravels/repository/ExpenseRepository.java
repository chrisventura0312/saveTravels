package com.codingdojo.saveTravels.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.saveTravels.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
    List<Expense> findAll();

    // Add any custom query methods here if needed
    // For example:
    // List<Expense> findByCategory(String category);
}
