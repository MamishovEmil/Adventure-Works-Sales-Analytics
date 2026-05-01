select  e.BusinessEntityID,
		p.FullName,
		e.NationalIDNumber,
		e.Gender,
		e.MaritalStatus,
		e.JobTitle,
		e.BirthDate,
		e.HireDate,
		pe.EmailAddress,
        pn.PhoneNumberType,
        pn.PhoneNumber,
		eh.ShiftType,
		eh.IsSalesPerson,
		d.DepartmentName,
		d.GroupName as DepartmentGroupName
from [staging].[employee] e 
inner join [staging].[employee_department_history] eh on e.businessentityid = eh.businessentityid
inner join [staging].[department] d on eh.Departmentid = d.Departmentid
inner join [staging].[persons] p on e.BusinessEntityID = p.BusinessEntityID 
inner join [staging].[person_email] pe on pe.BusinessEntityID = e.BusinessEntityID
inner join [staging].[person_phone_number] pn on e.BusinessEntityID = pn.BusinessEntityID


