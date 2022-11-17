PROBLEM

    As a customer
    So that I can check if I want to order something
    I would like to see a list of dishes with prices.

    As a customer
    So that I can order the meal I want
    I would like to be able to select some number of several available dishes.

    As a customer
    So that I can verify that my order is correct
    I would like to see an itemised receipt with a grand total.

    ---------

    As a customer
    So that I am reassured that my order will be delivered on time
    I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.


INTERFACE

Menu
see dishes with prices
select dishes
register order

Receipt
see receipt
price total

```Ruby

    class Menu
        def initialize
            # => contains hash of whole menu
            @menu = {
                "carbonara": "22.00",
                "bacon sandwich": "34.00",
                "mushroom pizza": "6.00",
                "vegetarian burger": "11.00"
            }
        end

        def print_menu
            # prints elements of menu hash
        end
    end

    class TakeOrders
        def initialize(menu) # menu is key, val if pass only hash // instance of menu if pass class
            # => hash with orders and prices
        end

        def get_all_orders
            # => returns all orders hash
        end

        def select_item
            # checks if item is selectable (needs access to menu)
            # gets item name, pushes to hash
        end
    end

    class CompleteOrder
        def initialize(orders) # => takes instance of ManageOrder
            # => hash of orders
        end

        def calc_tot
            # => calcs total
        end

        def print_receipt
            # => calls on clac_tot
            # => prints itemized orders
        end

        def register_order
            # indicate to customer order has been placed
        end
    end
```

EXAMPLES

- Integration tests
```Ruby
    --- Receipt

    # print receipt
    menu = Menu.new
    orders = TakeOrders.new(menu)
    orders.select_item("carbonara")
    orders.select_item("mushroom pizza")
    complete = CompleteOrder(orders)
    complete.print_receipt # => "carbonara": "22.00", "mushroom pizza": "6.00", total: "28.00"

```


- Unit tests
```Ruby
    --- Menu

    menu = Menu.new
    menu.print_menu # => "carbonara": "22.00",
                        # "bacon sandwich": "34.00",
                        # "mushroom pizza": "6.00",
                        # "vegetarian burger": "11.00"
    
    --- TakeOrders

    menu = double :menu
    orders = TakeOrders.new(menu)
    orders.select_item("carbonara")
    orders.select_item("mushroom pizza")
    orders.get_all_orders # => {"carbonara": "22.00"; "mushroom pizza": "6.00"}

    --- CompleteOrder

    menu = double :menu
    orders = double :take_orders, get_all_orders: {"carbonara": "22.00"; "mushroom pizza": "6.00"}
    complete = CompleteOrder(orders)
    complete.print_receipt # => "carbonara": "22.00", "mushroom pizza": "6.00", total: "28.00"

    menu = double :menu
    orders = double :take_orders
    complete = CompleteOrder(orders)
    complete.register_order # => text message: "Thank you! Your order was placed and will be delivered before 18:52"


```