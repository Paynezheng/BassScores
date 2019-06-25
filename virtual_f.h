#pragma once
#include<iostream>
using namespace std;

//https://blog.csdn.net/weixin_40237626/article/details/82313339

//结合虚函数实现原理理解多态




//拥有纯虚函数的类为抽象类，抽象类不能被实例化
class pure_v{
  public:
    pure_v();
    virtual void poly();//虚函数
    virtual ~pure_v()=0;//纯虚函数
};

//如果是一个普通的虚函数，那么，在虚函数表中，其函数指针就是一个有意义的值；如果是一个纯虚函数，那么，在虚函数表中，其函数指针的值就是0。


int main(){
  //试图栈中实例化抽象类，错误
  pure_v a;
  //试图堆中实例化抽象类,错误
  pure_v* b=new pure_v();
  return 0;
}
