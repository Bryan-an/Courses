package mysql.domain;

public class PersonBuilder {

    private Person person;

    public PersonBuilder() {
        reset();
    }

    public void reset() {
        person = new Person();
    }

    public void setId(int id) {
        person.setId(id);
    }

    public void setName(String name) {
        person.setName(name);
    }

    public void setLastName(String lastName) {
        person.setLastName(lastName);
    }

    public void setAge(Integer age) {
        person.setAge(age);
    }

    public void setAddress(String address) {
        person.setAddress(address);
    }

    public Person getPerson() {
        Person product = person;
        reset();
        return product;
    }

}
