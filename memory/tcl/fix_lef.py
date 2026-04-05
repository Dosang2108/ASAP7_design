import sys
import re

filepath = "../../Asap7/asap7/asap7_sram_0p0/generated/LEF/4xLEF/srambank_256x4x32_6t122.lef.4x.lef"

try:
    with open(filepath, 'r') as f:
        content = f.read()
except IOError:
    print("Loi: Khong tim thay file tai " + filepath)
    sys.exit(1)

# 1. Xoa thuoc tinh gay loi SITE coreSite
content = re.sub(r'\s*SITE coreSite\s*;\s*', '\n', content)

# 2. Xoa cac chan du thua tu 32 den 63
for i in range(32, 64):
    content = re.sub(r'\s*PIN wd\[' + str(i) + r'\].*?END wd\[' + str(i) + r'\]', '', content, flags=re.DOTALL)
    content = re.sub(r'\s*PIN dataout\[' + str(i) + r'\].*?END dataout\[' + str(i) + r'\]', '', content, flags=re.DOTALL)

# 3. LAM TRON SO (Triet tieu hoan toan loi IMPFP-3941)
def round_match(m):
    return "{:.3f}".format(float(m.group(1)))

content = re.sub(r'(-?\d+\.\d{4,})', round_match, content)

with open(filepath, 'w') as f:
    f.write(content)

print(">> Da don dep va lam tron toa do LEF thanh cong! Toa do da duoc ep ve luoi 0.001.")
