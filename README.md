# FastFeast

## Technologies used 
<pre>
Spring Boot 2.5.6.RELEASE
Spring 5.3.12.RELEASE
Spring Security 5.5.3 RELEASE
Thymeleaf 3.0.12 RELEASE
Hibernate 5.3.7
HikariCP 4.0.3
mysql-connector-java:jar 8.0.27
Maven 3
Java 8
</pre>

## Please follow below instructions to setup the code and run the application.



1. Download or clone the source code
2. Make sure you are using an IDE 
    - [SpringToolSuite](https://spring.io/tools) (Preferable) 
    - or Eclipse
4. Make sure **[lombok](https://projectlombok.org/)** is installed.
5. Import as **Maven projects**
6. Run **mvn clean install**
7. Make sure port **8080** is available for use or go to **application.properties** and add the port as you deemed to necessary.
8. Import database [a relative link](dump_current.sql) into mysql database
9. Configure MySQL **application.properties**
  <pre>
# ==============================================================
# = Data Source
# ==============================================================
spring.datasource.url=jdbc:mysql://localhost:3306/fastfeast
spring.datasource.username= root
spring.datasource.password= root
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5InnoDBDialect
spring.jpa.generate-ddl=true
spring.jpa.show-sql=true
spring.jpa.hibernate.ddl-auto = update

  </pre>
9. Run As Spring boot application
10. Go to browser
11. Type http://localhost:8080/campuseats/
