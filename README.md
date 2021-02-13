# context

Python debugging with context helper

Don't want complicated debugger but the `print("here")` isn't enough to help you catch mistakes ? Then you should try this module !

## Installation

```
pip install ctxt
```

## Usage

```python
from context import here

# Some code...
x = 13
y = 78
here()  # Will display context about where it was called
z = 895
here(x + y)  # Will display context + arguments


# Wraps function calls
@here
def f(x, y=10):
    return x + y

f(13, 10)  # Will display context + arguments + returned value

# Also work like this

g = here(f)
g(13, 10)
```


# TODO List:

- allows more arguments to Context class
- allows block context with `with here as h:`
