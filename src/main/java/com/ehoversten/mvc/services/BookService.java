package com.ehoversten.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ehoversten.mvc.models.Book;
import com.ehoversten.mvc.repository.BookRepository;

@Service
public class BookService {
    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    // define your method to call for a list of all books
    public List<Book> allBooks() {
    	// call the FIND_ALL query from the Repository file and RETURN the result
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
	public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
		// TODO Auto-generated method stub
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            optionalBook.get().setTitle(title);
            optionalBook.get().setDescription(desc);
            optionalBook.get().setLanguage(lang);
            optionalBook.get().setNumberOfPages(numOfPages);
            return bookRepository.save(optionalBook.get());
        } else {
            return null;
        }
	}
	
    // Delete Book
	public void deleteBook(Long id) {
		// TODO Auto-generated method stub
	    Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            bookRepository.delete(optionalBook.get()); 
        }
		bookRepository.deleteById(id);
	}
	
	
}