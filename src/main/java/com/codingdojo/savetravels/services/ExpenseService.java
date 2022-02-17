package com.codingdojo.savetravels.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;

	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}

	public Expense saveExpense(Expense e) {
		return this.expenseRepository.save(e);
	}

	public Iterable<Expense> allExpenses() {
		return this.expenseRepository.findAll();
	}

	public Expense findExpense(Long id) {
		Optional<Expense> optExpense = this.expenseRepository.findById(id);
		if (optExpense.isPresent()) {
			return optExpense.get();
		} else {
			return null;
		}
	}
}
