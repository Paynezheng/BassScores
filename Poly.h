#pragma once
#include<iostream>
using namespace std;


//多态分静态多态和动态多态

//动态多态，通过虚函数实现
class A {
public:
	int i;
	//利用默认构造函数对i赋值
	A():i(10){}

	//必须有virtual才能实现多态
	//含virtual函数指针加入虚函数表
	virtual  void f() { cout << "A::f()" << i << endl; }

};
class B : public A {
public:
	B() : j(20) {}
	virtual void f() { cout << "B::f()" << j << endl; }

	int j;
};
int test1()
{
	A a;
	B b;
	//通过指针引用才是动态绑定
	A *p = &b;//执行结果为B::f()20
	a = b;
	a.f();//执行结果为A::f()10
	p->f();
	return 0;
}

//静态多态
/*
静态多态的设计思想：对于相关的对象类型，直接实现它们各自的定义，不需要共有基类，甚至可以没有任何关系。
只需要各个具体类的实现中要求相同的接口声明，这里的接口称之为隐式接口。客户端把操作这些对象的函数定义为
模板，当需要操作什么类型的对象时，直接对模板指定该类型实参即可（或通过实参演绎获得）。相对于面向对象编
程中，以显式接口和运行期多态（虚函数）实现动态多态，在模板编程及泛型编程中，是以隐式接口和编译器多态来
实现静态多态
*/
class Line
{
public:
	void Draw()const { std::cout << "Line Draw()\n"; }
};

class Circle
{
public:
	void Draw(const char* name = NULL)const { std::cout << "Circle Draw()\n"; }
};

class Rectangle
{
public:
	void Draw(int i = 0)const { std::cout << "Rectangle Draw()\n"; }
};

template<typename T>
void DrawT(T g) {
	g.Draw();
}

void test2(){
	Line a;
	Circle b;
	Rectangle c;
	DrawT(a);
	DrawT(b);
	DrawT(c);
}