import os

from apcsalib import instantiate_empty_build
from apcsalib_topic import process_topic
import apcsaconfig as config 


#####
##### edx tests

monty_topic_path = os.path.join(config.TOPIC, 'c2/monty.topic')
build_target = instantiate_empty_build("c2")
process_topic(monty_topic_path, build_target) 
