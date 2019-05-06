# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
select Company.companyName, Employee.name
from (select max(name) as name from Employee) max,
     Employee
         left join Company on Company.id = Employee.id
where Employee.name = max.name
