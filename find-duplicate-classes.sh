# usage example
# bamboo@LM-SHB-24502256:~/workspaces/test/build/libs$find . -name '*.jar' -exec jar -tvf {} \; | grep WebConfig
#  1443 Tue Nov 19 10:59:48 CST 2019 com/bamboo/config/WebConfig.class
#  1443 Tue Nov 19 10:59:48 CST 2019 com/bamboo/config/WebConfig.class



# Find duplicate classes in jar
find . -name '*.jar' -exec jar -tvf {} \; | grep your-class-name
