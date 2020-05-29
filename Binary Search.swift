import Foundation
func binarySearch<T:Comparable>(array: Array<T>, item: T) -> Int? {

  	var lowerIndex = 0
  	var higherIndex  = array.count - 1
  
  	while (true) {
    	let midIndex = (lowerIndex + higherIndex) / 2
    	if (array[midIndex] == item) {
			print("Элемент найден, индекс \(midIndex)")
			return midIndex
		} else if (lowerIndex > higherIndex) {
			print("Элемент не найден")
			return nil
		} else {
			if (array[midIndex] > item) {
				higherIndex = midIndex - 1
			} else {
				lowerIndex = midIndex + 1
			}
		}
	}
}

binarySearch(array: [1,3,5,7,9], item: -1)