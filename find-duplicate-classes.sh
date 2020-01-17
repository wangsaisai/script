# Find duplicate classes in jar
find . -name '*.jar' -exec jar -tvf {} \; | grep your-class-name
