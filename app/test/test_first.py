from django.test import SimpleTestCase


class MyTestCase(SimpleTestCase):
    def test_100_is_100(self):
        # Arrange
        expected_value = 100
        actual_value = 100

        # Act & Assert
        self.assertEqual(expected_value, actual_value)
