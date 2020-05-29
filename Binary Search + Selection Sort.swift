import Foundation
func binarySearch<T:Comparable>(array: inout Array<T>, item: T) -> Int? {
	var sortedArray = selectionSort(array: &array)
  	var lowerIndex = 0
  	var higherIndex  = sortedArray.count - 1
  
  	while (true) {
    	let midIndex = (lowerIndex + higherIndex) / 2
    	if (sortedArray[midIndex] == item) {
			print("Элемент найден, индекс \(midIndex)")
			return midIndex
		} else if (lowerIndex > higherIndex) {
			print("Элемент не найден")
			return nil
		} else {
			if (sortedArray[midIndex] > item) {
				higherIndex = midIndex - 1
			} else {
				lowerIndex = midIndex + 1
			}
		}
	}
}

func selectionSort<T:Comparable>(array: inout Array<T>) -> [T] {
	var sortedArray = [T]()
	for i in (0...(array.count - 1)) {
		let smallest = findSmallest(array: array)
		sortedArray.append(array[smallest])
		array.remove(at: smallest)
	}
	print(sortedArray)
	return sortedArray
}

func findSmallest<T:Comparable>(array: Array<T>) -> Int {
	var smallest = array[0]
	var smallest_index = 0
	for i in (0...array.count - 1) {
		print(i)
		if array[i] < smallest {
			smallest = array[i]
    			smallest_index = i
    		}
  	}
  	return smallest_index
}
