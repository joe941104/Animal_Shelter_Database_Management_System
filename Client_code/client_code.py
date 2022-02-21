import  pymysql
import datetime
'''
5200 Final Project
Author Name: Jiachen Liu
'''

'''
The Username is root
The Password is LJc690625822
'''

'''
Create animal tuple 
'''
def create_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        get_id = "select max(animal_id) as _max from animal"
        cur.execute(get_id)
        new_id =  cur.fetchall()[0]['_max'] + 1
        animal_name = input("Please input animal name: ")
        animal_id = new_id
        animal_type = input("Please input animal type: ")
        aniaml_age = input("Please input animal age: : ")
        animal_gender = input("Please input animal gender: ")
        sql = "insert into animal(animal_name,animal_id,animal_type,animal_age,animal_gender) " \
              "values ('%s','%s','%s','%s','%s')"%(animal_name,animal_id,animal_type,aniaml_age,animal_gender)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))
'''
update animal tuple
'''
def update_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        animal_name = input("Please input animal name that need update: ")
        animal_type = input("Please input animal type: ")
        animal_age = input("Please input animal age: : ")
        animal_gender = input("Please input animal gender: ")
        sql = "update animal set animal_type = '%s',animal_age = '%s' " \
              ",animal_type = '%s' ,animal_gender ='%s' where animal_name = '%s'"%(animal_type,animal_age,
                                                             animal_type,animal_gender,animal_name)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()

    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))
'''
read the animal data 
'''
def read_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        sql = "select * from animal;"
        cur.execute(sql)
        print(cur.fetchall())
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))
'''
delete animal tuple 
'''
def delate_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        animal_name =  input("Please input animal name that need delete: ")
        animal_type =  input("Please input animal type: ")
        animal_age = input("Please input animal age: : ")
        animal_gender = input("Please input animal gender: ")
        sql = "delete from animal where ( animal_name = '%s' and animal_type = '%s' and animal_age = '%s' " \
              "and animal_type = '%s' and animal_gender ='%s')" %(animal_name,animal_type,animal_age,
                                                             animal_type,animal_gender)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))
'''
create donor tuple 
'''
def create_donor():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        dornor_name = input("Please input donor name: ")
        phone = input("Please input phone number: ")
        dornor_date = datetime.date.today()
        sql = "insert into donor(dornor_name, phone, donor_date) values ('%s','%s','%s')"\
              %(dornor_name, phone,dornor_date)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))

'''
update donor tuple
'''
def update_donor():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        dornor_name = input("Please input donor name that need update: ")
        phone = input("Please input updated phone number: ")
        dornor_date = input("Please input updated date as format(yyyy-mm-dd): ")
        sql = "update donor set phone = '%s',donor_date = '%s' " \
              "where dornor_name = '%s'"%(phone,dornor_date,dornor_name)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))

'''
read donor tuple 
'''
def read_donor():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        sql = "select * from donor;"
        cur.execute(sql)
        print("read operation Success !")
        print(cur.fetchall())
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

'''
delete donor tuple 
'''
def delate_donor():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        dornor_name = input("Please input donor name that need delete: ")
        sql = "delete from donor where dornor_name = '%s'"%(dornor_name)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))

'''
create adopter tuple
'''
def create_adopter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        adopter_name = input("Please input adopter name: ")
        city = input("Please input adopter's city: ")
        phone = input("Please input phone number: ")
        adopt_date = datetime.date.today()
        sql = "insert into adopter (adopter_name, city, phone,adopt_date) " \
              "values('%s','%s','%s','%s') "%(adopter_name,city,phone,adopt_date)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))
'''
update adopter tuple
'''
def update_adopter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        adopter_name = input("Please input adopter name that need update: ")
        phone = input("Please input updated phone number: ")
        city = input("Please input updated city: ")
        adopter_date = input("Please input updated date as format(yyyy-mm-dd): ")
        sql = "update adopter set phone = '%s',city = '%s',adopt_date = '%s' " \
              "where adopter_name = '%s'" % (phone,city,adopter_date,adopter_name)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))
'''
read adopter tuple
'''
def read_adopter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        sql = "select * from adopter;"
        cur.execute(sql)
        print("read operation Success !")
        print(cur.fetchall())
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))
'''
delete adopter tuple 
'''
def delete_adopter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        adopter_name = input("Please input adopter name that need delete: ")
        sql = "delete from adopter where adopter_name = '%s'" % (adopter_name)
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

'''
create register_info tuple
'''
def create_register_info():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        print("Please input animal info:")
        create_animal()
        print("Please input donor info:")
        create_donor()
        sql_get_id = "select max(animal_id) as _max from animal"
        cur.execute(sql_get_id)
        new_id = cur.fetchall()[0]['_max']
        shelter_name =input("PLease input the shelter name that you want to: ")
        sql_get_admin = "select admin_name from shelter_administrator where shelter_name = '%s'"%(shelter_name)
        cur.execute(sql_get_admin)
        admin_name = cur.fetchall()[0]['admin_name']
        dornor_name = input("PLease input the donor name that you want to insert: ")
        sql_get_donor = "select dornor_name from donor where dornor_name = '%s'" % (dornor_name)
        cur.execute(sql_get_donor)
        donor_name = cur.fetchall()[0]['dornor_name']
        adopter = input("Does this animal already have a adopter(Y/N): ")
        if adopter == "Y":
            create_adopter()
            adopter_name = input("PLease input the adopter name that you want to insert: ")
            sql_insert_registion = "insert into register_info(animal_id,shelter_name,admin_name,donor_name,adopt_name) " \
                                   "values ('%s','%s','%s','%s','%s')" % (
                                   new_id, shelter_name, admin_name, donor_name, adopter_name)
            cur.execute(sql_insert_registion)
            data = cur.fetchall()
            cnx.commit()
            cnx.close()
        else:
            sql_insert_registion = "insert into register_info(animal_id,shelter_name,admin_name,donor_name) " \
                                   "values ('%s','%s','%s','%s')" % (
                                       new_id, shelter_name, admin_name, donor_name)
            cur.execute(sql_insert_registion)
            data = cur.fetchall()
            cnx.commit()
            cnx.close()

    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))

'''
update register_info tuple(update the adopter for the animal which does have adopter)
'''
def update_register_info():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        animal_name = input("Please input animal name that need update: ")
        animal_type = input("Please input animal type that need update: ")
        sql_get_id = "select animal_id from animal where(animal_name = '%s' and animal_type='%s')"\
                     %(animal_name,animal_type)
        cur.execute(sql_get_id)
        animal_id = cur.fetchall()[0]['animal_id']
        create_adopter()
        adopter_name = input("PLease input the adopter name that you created: ")
        sql = "update register_info set adopt_name ='%s' where animal_id = %d; "\
              % (adopter_name,int(animal_id))
        cur.execute(sql)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

'''
read register_info tuple
'''
def read_register_info():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        sql = "select * from register_info;"
        cur.execute(sql)
        data = cur.fetchall()
        print(data)
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))
'''
delete register_info tuple
'''

def delete_register_info():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success")
        cur = cnx.cursor()
        animal_name = input("Please input animal name that you want to delete: ")
        animal_type = input("Please input the animal type that you want to delete : ")
        sql_get_id = "select animal_id from animal where(animal_name = '%s' and animal_type='%s')" \
                     % (animal_name, animal_type)
        cur.execute(sql_get_id)
        animal_id = cur.fetchall()[0]['animal_id']
        sql_register_info = "delete from register_info where animal_id = '%s'" % (animal_id)
        cur.execute(sql_register_info)
        sql_animal = "delete from animal where animal_id = '%s'" % (animal_id)
        cur.execute(sql_animal)
        data = cur.fetchall()
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))



'''
find the animal which has not been adopt yet
'''
def not_adopt_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        cur = cnx.cursor()
        cur.callproc('animal_no_adopter')
        data = cur.fetchall()
        print(data)
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))
'''
get the summary information for the animal 
'''
def get_summary():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        cur = cnx.cursor()
        cur.callproc('summary')
        data = cur.fetchall()
        print(data)
        cnx.commit()
        cnx.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))

'''
track the information for a given adopter
'''
def track_adopter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                          db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        name  = input("Please input a adopter name: ")
        cur.callproc('track_adopter',[name])
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s"%(e.args[0],e.args[1]))

'''
track the information for a given donor
'''

def track_donor():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        name = input("Please input a donor name: ")
        cur.callproc('track_donor', [name])
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

'''
track the detail information  animal for a given animal name and animal type
'''
def track_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        animal_name = input("Please input an animal name: ")
        animal_type = input("Please input an animal type: ")
        cur.callproc('track_animal', [animal_name,animal_type])
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

'''
track the detail information of shelter for a given shelter name 
'''
def track_shelter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        shelter_name = input("Please input an shelter name: ")
        cur.callproc('track_shelter', [shelter_name])
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))


'''
find the donor who donate the most number of animal 
'''
def the_most_donor():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        sql = "select most_donor();"
        cur.execute(sql)
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))
'''
find the most number of a type for a given shelter
'''
def the_most_type_animal():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        shelter_name = input("Please input a shelter name that you want to analysis:")
        sql = "select most_type_animal('%s');"%(shelter_name)
        cur.execute(sql)
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

'''
find the number of animal in a given animal shelter
'''

def num_animal_shelter():
    username = input("Please input MySQL username: ")
    password = input("Please input MySQL password: ")
    try:
        cnx = pymysql.connect(host='127.0.0.1', port=3306, user=username, password=password,
                              db='final', cursorclass=pymysql.cursors.DictCursor)
        print("Connection Success !")
        cur = cnx.cursor()
        shelter_name = input("Please input a shelter name that you want to analysis:")
        sql = "select num_animal_shelter('%s');" % (shelter_name)
        cur.execute(sql)
        print(cur.fetchall())
        cur.close()
    except pymysql.OperationalError as e:
        print("Error: %d: %s" % (e.args[0], e.args[1]))

