from django.test import TestCase

class MyTestCase(TestCase):

    def test_100_is_100(self):
        self.assertEqual(100, 100)
