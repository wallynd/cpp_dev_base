#include <iostream> 

class simple                  
{
  public:                   
    simple(int value): _value(value) {};              
    simple(const simple& simple_){};         
    simple& operator=(const simple& rhs){ _value = rhs._value; };  
    ~simple(){};                             

    int  getValue() const { return _value; };                
    void setValue(int value) { _value = value;};             

 private:                                
    int _value;                           
};

int main()
{
    int value = 42;
    simple a(value);
    std::cout << "The value is " << a.getValue() << std::endl;
    a.setValue(12);
    std::cout << "The value is now " << a.getValue() << std::endl;
    return 0;
}
