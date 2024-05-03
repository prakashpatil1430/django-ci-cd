from django.test import TestCase, SimpleTestCase


class MyTestCase(SimpleTestCase):

    def test_100_is_100(self):
        self.assertEqual(100, 100)
