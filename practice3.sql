#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select Company.companyName, avgSalary
from (select max(EmployeeMax.avgSalary) as avgSalary
      from (select avg(Employee.salary) as avgSalary, Employee.companyId
            from Employee
            group by Employee.companyId) EmployeeMax) as EmployeeMax,
     Employee
         left join Company on Employee.companyId = Company.id
where EmployeeMax.avgSalary = Employee.salary


