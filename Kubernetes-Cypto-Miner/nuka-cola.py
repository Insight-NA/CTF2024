import time

flavors = ["Nuka-Cola", "Diet Nuka-Cola", "New-Nuka", "Nuka-Cola Cranberry", "Nuka-Grape", "Nuka-Cola Orange", "Nuka-Cherry", "Nuka-Cola Quantum", "Nuka-Cola Victory", "Nuka-Cola Dark"]


def print_flavors():
    i = 0
    while i < len(flavors):
        print(flavors[i])
        i += 1
        
        time.sleep(1)

        if i == len(flavors)-1:
            print("Please Make a Selection")
            time.sleep(2)
            i = 0

if __name__ == "__main__":
    print_flavors()
