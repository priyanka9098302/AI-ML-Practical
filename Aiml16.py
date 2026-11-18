
sem_net = {
    "dog": {"is_a": "animal", "has": "tail", "can": "bark"},
    "cat": {"is_a": "animal", "has": "tail", "can": "meow"}
}

print("Display my semantic network")
for object, rel in sem_net.items():
    for rel, value in rel.items():
        print(object, "-----", rel, "-----", value)