import requests

class Tiingo:
    """ Tiingo API implementation """

    def __init__(self, api_key):
        self.api_key = api_key

    def get_headers(self, content_type = "application/json") -> dict:
        headers = {
            "Content-Type": content_type,
            "Authorization": f"Token {self.api_key}"
        }

    def test(self):
        rsp = requests.get("https://tiingo.com/api/test", headers=self.get_headers())
        print(repr(rsp))

