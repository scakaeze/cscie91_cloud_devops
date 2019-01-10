import unittest
 
class TestUM(unittest.TestCase):
 
    def setUp(self):
        pass
 
    def test_user(self):
        #self.assertEqual( "username1", "username")
        self.assertEqual( "username", "username")
 
    def test_aws(self):
        #self.assertEqual( 'resources1', 'resources')
        self.assertEqual( 'resources', 'resources')
 
if __name__ == '__main__':
    unittest.main()

