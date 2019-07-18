*** Settings ***
Resource  ./pages/welcome.robot
Resource  ./pages/catalog.robot

# Hello Jenkins

# ข้อดีของการแยกไฟล์คือ
# 1. อ่านง่าย (ไม่มี selenium ในไฟล์ testcase หลัก) --> ไฟล์นี้จะไม่มี technical เลย
# 2. เวลาจะเอา test case ไปใช้กับ platform อื่นเช่น mobile ก็แค่ไปแก้ implementation ในไฟล์แต่ละหน้าย่อย (แก้ selenium เป็นอย่างอื่น) 

*** Test Cases ***
Sorting by price
    [Tags]  done  sprint1
    เข้า web หน้าแรก
    เข้าไปยังหน้า summer dress
    ทำการเลือก sort ด้วย price จากแพงไปถูก
    ผลการทำงานต้องแสดงผลจากแพงไปถูก

*** Keywords ***
เข้า web หน้าแรก
    welcome.Open

ผลการทำงานต้องแสดงผลจากแพงไปถูก
    catalog.Check sorted high

ทำการเลือก sort ด้วย price จากแพงไปถูก
    catalog.Choose sort high

เข้าไปยังหน้า summer dress
    welcome.Choose menu Dresses
    catalog.Choose summer Dresses