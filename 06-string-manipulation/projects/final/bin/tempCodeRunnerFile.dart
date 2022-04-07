final buffer = StringBuffer();
for (int i = 2; i <= 1024; i *= 2) {
  buffer.write(i);
  buffer.write(' ');
}
print(buffer);