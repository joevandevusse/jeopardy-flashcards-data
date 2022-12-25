import logging 
import os 

dir_path = os.path.dirname(os.path.realpath(__file__))
file_name = os.path.join(dir_path, 'test_log.log')
#print(file_name)

# Logging 
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

file_handler = logging.FileHandler(file_name)
file_handler.setLevel(logging.INFO)
file_handler.setFormatter(logging.Formatter('%(asctime)s - %(levelname)s - %(message)s'))
logger.addHandler(file_handler)

def do_logging():
  logger.info("test")

if __name__ == '__main__':
  do_logging()