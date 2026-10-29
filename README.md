# Simple Interest Kalkulator

A simple Python program that calculates the simple interest on a sum of money.

## Description

Simple interest is the interest calculated only on the original principal amount. This calculator takes the principal, the annual rate of interest, and the time period, then displays the interest earned and the total amount.

## Formula

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount = P + SI
```

Where:
- **P** = Principal amount
- **R** = Annual rate of interest (in %)
- **T** = Time period (in years)

## Features

- Accepts principal, rate, and time as user input
- Calculates simple interest and total amount
- Easy to read and modify

## Example

| Principal | Rate | Time    | Simple Interest | Total Amount |
|-----------|------|---------|-----------------|--------------|
| 10,000    | 5%   | 3 years | 1,500           | 11,500       |

## How to Run

1. Make sure Python 3 is installed.
2. Clone this repository:
   ```
   git clone https://github.com/<your-username>/simple-interest-calculator.git
   ```
3. Run the program:
   ```
   python simple_interest.py
   ```

## Sample Code

```python
principal = float(input("Enter the principal amount: "))
rate = float(input("Enter the annual interest rate (%): "))
time = float(input("Enter the time period (years): "))

interest = (principal * rate * time) / 100
total = principal + interest

print(f"Simple Interest: {interest}")
print(f"Total Amount: {total}")
```

## License

This project is open source and available for anyone to use.
