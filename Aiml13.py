# Practical 13: Blocks World Problem

blocks = ["A", "B", "C"]

# Position of each block
state = {
    "A": "Table",
    "B": "A",
    "C": "B"
}

print("Blocks World Problem")

valid = True

for block in blocks:
    if state[block] != "Table" and state[block] not in blocks:
        valid = False

    if state[block] == block:
        valid = False

if valid:
    print("Valid Stacking State")

    for block in blocks:
        if state[block] == "Table":
            print(block, "is on Table")
        else:
            print(block, "is on", state[block])

    for block in blocks:
        if block not in state.values():
            print(block, "is Clear")
else:
    print("Invalid Stacking State")