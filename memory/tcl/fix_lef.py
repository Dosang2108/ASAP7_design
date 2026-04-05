import sys
import re

filepath = "../../Asap7/asap7/asap7_sram_0p0/generated/LEF/srambank_256x4x32_6t122.lef"

try:
    with open(filepath, 'r') as f:
        content = f.read()
except IOError: # Dung IOError thay cho FileNotFoundError de tuong thich Python 2
    print("Loi: Khong tim thay file tai " + filepath)
    sys.exit(1)

# 1. Xoa thuoc tinh gay loi SITE coreSite
content = re.sub(r'\s*SITE coreSite\s*;\s*', '\n', content)

# 2. Xoa an toan toan bo cac chan du thua tu 32 den 63 cua ca kenh Ghi va Doc
for i in range(32, 64):
    content = re.sub(r'\s*PIN wd\[' + str(i) + r'\].*?END wd\[' + str(i) + r'\]', '', content, flags=re.DOTALL)
    content = re.sub(r'\s*PIN dataout\[' + str(i) + r'\].*?END dataout\[' + str(i) + r'\]', '', content, flags=re.DOTALL)

with open(filepath, 'w') as f:
    f.write(content)

print(">> Da don dep LEF thanh cong! Khoi SRAM nay da hoan toan khop voi file LIB.")
