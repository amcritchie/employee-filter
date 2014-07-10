class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    @employees.select {|employee| employee[:start_date].year < 2006}
  end

  def all_with_start_date
    @employees.map! {|employee|
      employee = employee[:first_name] + " " + employee[:last_name] + " (" +
          employee[:title] + ") - " + employee[:start_date].strftime("%-m/%-d/%Y").to_s
    }

  end

end