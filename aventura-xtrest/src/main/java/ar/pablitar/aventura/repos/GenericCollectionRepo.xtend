package ar.pablitar.aventura.repos

import java.util.List
import java.util.Optional
import java.util.NoSuchElementException

class GenericCollectionRepo<T> {
	List<T> instances = newArrayList
	
	def List<T> allInstances() {
		instances.clone
	}
	
	def create(T t) {
		instances.add(t)
	}
	
	def findByPredicate((T) => Boolean predicate) {
		findByPredicate(predicate, [throw new NoSuchElementException])
	}
	
	def findByPredicate((T) => Boolean predicate, => T ifNone) {
		Optional.ofNullable(instances.findFirst(predicate)).orElseGet(ifNone)
	}
	
	def findOrCreate((T) => Boolean predicate, => T ifNotFound) {
		findByPredicate(predicate, [
			var T value = ifNotFound.apply
			instances.add(value)
			value
		])
	}
}