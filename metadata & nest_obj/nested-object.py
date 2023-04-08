def get_value(nested_obj, keys):
       try:
        value = nested_obj
        for i in keys:
            value = value[i]
        return value
       except TypeError:
           print("Invalid Type")

# Define a nested object
nested_obj = {
    'x': {
        'y': {
            'z': 7
        }
    }
}
# Get the value associated with the keys 
keys = ['x', 'y', 'z']
value = get_value(nested_obj, keys)
print(value) 


#output: 7