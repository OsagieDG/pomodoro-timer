import os


def alert_user(alert_message):
    os.system(f'say "{alert_message}"')
    print('\a')


