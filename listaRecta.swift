class listItem {
  var product: String
  var account: Int
  var next: listItem?
  
  init(product: String, account: Int, next: listItem? = nil) {
    self.product = product
    self.account = account
    self.next = next
  }
}



func showList() {
  
  var item = shoppingList
  var again = true
  var i = 1
  while again {
    
  
  guard let currentItem = item else {
    print("\nthis is nil")
    again = false
    break
  }
  print("\nItem List \(i):") 
  print("\n     Product: \(currentItem.product) account: \(currentItem.account)")
  i += 1
    item  = currentItem.next
  }
}
var shoppingList: listItem?

var element1 = listItem(product: "Meat", account: 10)
shoppingList = element1

var element2 = listItem(product: "Fish", account: 20)
element1.next = element2

var element3 = listItem(product: "Vegetables", account: 30)
element2.next = element3

var element4 = listItem(product: "Fruits", account: 40)
element3.next = element4

var element5 = listItem(product: "Bread", account: 60)
element4.next = element5



showList()
