USE Student@recomandation
CREATE Table Landlord (
       Landlord_id INT Primary Key,
       Lname VARCHAR(20),
       Laddress VARCHAR(30)
);

CREATE Table Fee (
       Receipt_No INT Primary Key,
       Amount INT,
       Landlord_id INT,
       constraint  Landlord_id
       foreign key (Landlord_id)
       REFERENCES Landlord(Landlord_id)
);


CREATE Table Property (
       Property_id INT Primary Key,
       Paddress VARCHAR(30),
       Property_type VARCHAR(20),
       Max_tents INT,
       Rent_Amount INT,
       Availability_status VARCHAR(20),
       Landlord_id INT,
       FOREIGN KEY (Landlord_id)REFERENCES Landlord(Landlord_id)
);

CREATE Table Student (
       Student_id INT Primary Key,
       Sname VARCHAR(20),
       DOB DATE,
       Gender VARCHAR(10),
       Current_address VARCHAR(30),
        constraint  Property_id
		FOREIGN KEY(Student_id)REFERENCES Property(Property_id)
);

CREATE Table Viewing (
       V_id INT Primary Key,
       Student_name VARCHAR(20),
       Date DATE,
       Landlord_id INT,
       FOREIGN KEY (Landlord_id)REFERENCES Landlord(Landlord_id),
       Student_id INT,
       FOREIGN KEY (Student_id)REFERENCES Student(Student_id)
);

CREATE Table Viewing_Request (
       V_id INT Primary Key,
       FOREIGN KEY(V_id)REFERENCES Viewing(V_id),
       Student_id INT ,
       FOREIGN KEY (Student_id)REFERENCES Student(Student_id)
);

CREATE Table StudentTel_No (
       Tel_No INT,
       Student_id INT Primary Key,
       FOREIGN KEY (Student_id)REFERENCES Student(Student_id)
);

CREATE Table LandlordTel_No (
       Tel_N0 INT,
        Landlord_id INT,
       FOREIGN KEY (Landlord_id)REFERENCES Landlord(Landlord_id)
);
go


