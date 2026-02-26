def calculate_simple_interest(principal: float, rate: float, time: float) -> float:
    """
    Calculate simple interest.

    Formula:
        SI = (P * R * T) / 100
    """
    return (principal * rate * time) / 100


def main():
    print("Simple Interest Calculator")
    print("-" * 30)

    try:
        principal = float(input("Enter Principal amount: "))
        rate = float(input("Enter Rate of interest (%): "))
        time = float(input("Enter Time (years): "))

        if principal < 0 or rate < 0 or time < 0:
            raise ValueError("Values cannot be negative.")

        interest = calculate_simple_interest(principal, rate, time)

        print("\nResult")
        print("-" * 30)
        print(f"Simple Interest: {interest:.2f}")

    except ValueError as e:
        print(f"Invalid input: {e}")


if __name__ == "__main__":
    main()
