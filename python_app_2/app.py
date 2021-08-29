from datetime import timedelta
from datetime import datetime


def main():
    last_time = datetime.now()
    last_time = last_time.replace(second=0, microsecond=0)
    from_time = last_time - timedelta(minutes=1)
    from_time = from_time.replace(second=1, microsecond=0)

    print("APP2: ", from_time, "(", int(datetime.timestamp(from_time)), ")",
          " - ", last_time, "(", int(datetime.timestamp(last_time)), ")")


main()
