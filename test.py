import hashlib
f = open("imagen.png")
hash_object = hashlib.sha256(f.read())
hex_dig = hash_object.hexdigest()
print(hex_dig)
