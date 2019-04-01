#!/bin/bash

# Script to reproduce results
# Original parameters:
# --start_timesteps 10000
# --max_timesteps 1e6

for ((i=0;i<5;i+=1))
do 
	python main.py \
	--policy_name "DDPG" \
	--env_name "Pendulum-v0" \
	--seed $i \
	--start_timesteps 1000 \
	--max_timesteps 50000

	python main.py \
	--policy_name "TD3" \
	--env_name "Pendulum-v0" \
	--seed $i \
	--start_timesteps 1000 \
	--max_timesteps 50000
done
