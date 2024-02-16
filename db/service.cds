namespace Proj1;

entity student {
    key studentid : String;
    studentname : String;
    studentage : Integer;
    stdtocourse : Composition of many course on stdtocourse.coursetostd = $self;
}

entity Enrollment {
    key Enrollmentid : String;
    courseid : String;
    studentid : String;
    Enrollmentdate : Date;
}

entity course {
    key courseid : String;
    studentid : String;
    coursename: String;
    coursedesc : String;
    coursetostd : Association to one student on coursetostd.studentid = studentid; 
}