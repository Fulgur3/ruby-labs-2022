class Student
  attr_reader :surname,:hostel,:experience, :work_teacher,:college,:language

  def initialize(surname,hostel,experience,college,language)
    @surname=surname.to_s
    @hostel = !!hostel
    @experience=experience.to_i
    if experience==0
    @work_teacher=false
    else
      @work_teacher=true
      end
    @college=college.to_s
    @language=language.to_s
  end

end

class Students
  attr_reader :students_array

  def initialize(student_array=[])
    @students_array=Array.new
    student_array.each{|student| @students_array<<student.dup}
  end

  def add_student(student)
    @students_array.append(student)
  end

  def task_a
    counter=0
    @students_array.each do |student|
      if student.hostel==true
        counter+=1
      end
    end
    print(counter)
  end

  def task_b
    @students_array.each do|student|
      if student.experience>=2
        printf(student.surname)
        printf("\n")
      end
    end

end

def task_c
  @students_array.each do|student|
    if student.college=="педучилище"
      printf(student.surname)
      printf("\n")
    end
  end
end

def task_d
  printf("English group")
  printf("\n")
  @students_array.each do|student|
    if student.language=="English"
      printf(student.surname)
      printf("\n")
    end
  end
  printf("Ukrainian group")
  printf("\n")
  @students_array.each do|student|
    if student.language=="Ukrainian"
      printf(student.surname)
      printf("\n")
    end
  end
  printf("German group")
  printf("\n")
  @students_array.each do|student|
    if student.language=="German"
      printf(student.surname)
      printf("\n")
    end
  end
end
  end
students_array= Students.new()

students_array.add_student(Student.new("Shvets",false,3,"педучилище","German"))
students_array.add_student(Student.new("Esipovich",true,0,"педучилище","English"))
students_array.add_student(Student.new("Another",true,5,"КПІ","English"))
students_array.task_a
printf("\n")
students_array.task_b
printf("\n")
students_array.task_c
printf("\n")
students_array.task_d


