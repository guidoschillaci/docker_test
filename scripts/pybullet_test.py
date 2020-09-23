# verbatim from https://docs.google.com/document/d/10sXEhzFRSnvFcl3XxNGhnD4N2SedqwdAvK3dsihxVUA/edit#
# pybullet quickstart guide

import pybullet as p
physicsClient = p.connect(p.DIRECT)
print('connected to physicsClient')
p.disconnect()
print('disconnected from physicsClient')