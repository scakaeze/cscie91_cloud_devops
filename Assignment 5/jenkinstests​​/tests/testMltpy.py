import unittest

def fun(n):
    return n * 5

class MyTest(unittest.TestCase):
    def test(self):
        self.assertEqual(fun(12), 60)

if __name__ == '__main__':
    unittest.main()

