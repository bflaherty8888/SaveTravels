package com.codingdojo.savetravels.services;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;

	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
	public Expense createExpense(Expense e) {
		return this.expenseRepository.save(e);
	}
	
	public Iterable<Expense> allExpenses(){
		return this.expenseRepository.findAll();
	}
}
