from django.test import SimpleTestCase


class MyTestCase(SimpleTestCase):

    def test_100_is_100(self):
        self.assertEqual(100, 100)
