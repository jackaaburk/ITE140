| Order Number | Customer Name | Contact Info          | Order Date   | Pizzas Ordered                              | Toppings                    | Delivery Address        | Delivery Driver |
| ------------ | ------------- | --------------------- | ------------ | ------------------------------------------- | --------------------------- | ----------------------- | --------------- |
| O3001        | Linda Lee     | linda.lee@example.com | 2024-07-01   | "Margherita", "Pepperoni"                   | Extra Cheese, Olives        | 123 Maple Street, Apt 4 | Tony            |
| O3002        | Mark Spencer  | (555) 345-6789        | 07/02/2024   | "BBQ Chicken"                               | Bacon, Onions               | 456 Oak Avenue          | Gina            |
| O3003        | Nina Patel    | nina.p@domain.com     | July 3, 2024 | "Veggie Delight", "Hawaiian", "Meat Lovers" | Pineapple, Sausage, Peppers | 789 Pine Road, Suite 12 | Tony            |
| O3004        | Jake Taylor   | jake.t@example.org    | 2024/07/04   | "Pepperoni"                                 | Extra Cheese                | 321 Elm Street          | Gina            |
| O3005        | Linda Lee     | linda.lee@example.com | 07-05-2024   | "Margherita"                                | Basil                       | 123 Maple Street, Apt 4 | Tony            |
| O3006        | Omar Khalid   | 555-789-0123          | 2024-07-06   | "BBQ Chicken", "Pepperoni"                  | Bacon, Olives               | 654 Cedar Blvd, Apt 9   | Gina            |

- Contact Info isn't consistent, should either be split into email and number or just have one or the other.
- Same with order date, should just be a consistent date.
- Items can't be in a list.
- PK is Order Number and Pizzas Ordered, Toppings should be split into another list.
- Contact Info is a PD of Customer Name.


| Order Number | Customer Name | Contact Info          | Order Date   | Pizzas Ordered                              | Delivery Address        | Delivery Driver |
| ------------ | ------------- | --------------------- | ------------ | ------------------------------------------- | ----------------------- | --------------- |
| O3001        | Linda Lee     | linda.lee@example.com | 07/01/24     | "Margherita"                                | 123 Maple Street, Apt 4 | Tony            |
| O3001        | Linda Lee     | linda.lee@example.com | 07/01/24     | "Pepperoni"                                 | 123 Maple Street, Apt 4 | Tony            |
| O3002        | Mark Spencer  | (555) 345-6789        | 07/02/24     | "BBQ Chicken"                               | 456 Oak Avenue          | Gina            |
| O3003        | Nina Patel    | nina.p@domain.com     | 07/03/24     | "Veggie Delight"                            | 789 Pine Road, Suite 12 | Tony            |
| O3003        | Nina Patel    | nina.p@domain.com     | 07/03/24     | "Hawaiian"                                  | 789 Pine Road, Suite 12 | Tony            |
| O3003        | Nina Patel    | nina.p@domain.com     | 07/03/24     | "Meat Lovers"                               | 789 Pine Road, Suite 12 | Tony            |
| O3004        | Jake Taylor   | jake.t@example.org    | 07/04/24     | "Pepperoni"                                 | 321 Elm Street          | Gina            |
| O3005        | Linda Lee     | linda.lee@example.com | 07/05/24     | "Margherita"                                | 123 Maple Street, Apt 4 | Tony            |
| O3006        | Omar Khalid   | 555-789-0123          | 07/06/24     | "BBQ Chicken"                               | 654 Cedar Blvd, Apt 9   | Gina            |
| O3006        | Omar Khalid   | 555-789-0123          | 07/06/24     | "Pepperoni"                                 | 654 Cedar Blvd, Apt 9   | Gina            |



| Order Number | Toppings                    |
| ------------ | --------------------------- |
| O3001        | Extra Cheese                |
| O3001        | Olives                      |
| O3002        | Bacon                       |
| O3002        | Onions                      |
| O3003        | Pineapple                   |
| O3003        | Sausage                     |
| O3003        | Peppers                     |
| O3004        | Extra Cheese                |
| O3005        | Basil                       |
| O3006        | Bacon                       |
| O3006        | Olives                      |