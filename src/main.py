import os

from numpy.random import random_sample

from tiingo import  Tiingo

if __name__ == '__main__':
    tiingo_api_key = os.environ.get('TIINGO_API_KEY')

    if tiingo_api_key is None:
        raise Exception('TIINGO_API_KEY environment variable is not set')

    tiingo = Tiingo(tiingo_api_key)
    tiingo.test()