import pytest
from subtract import subtract

def test_add():
    assert subtract(2, 3) == -1
    assert subtract(-1, 1) == -2
    assert subtract(-1, -1) == 0
