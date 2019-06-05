#pragma once
#include<iostream>
using namespace std;
#define AX 1.6
#undef AX

//https://www.cnblogs.com/xudong-bupt/p/3509567.html
//尽可能使用const
class game {
private:
	static int static_int;//所有game类共享的成员变量，一经改变，全部都变
							//此处不允许被赋予初值！！
	static const int static_const_int=1;//一经定义，无法修改
public:
	void print() {
		static_int++;
		cout << static_int << " " << static_const_int << endl;
	}
};


char greeting[] = "hello";
char* p1 = greeting;
const char* p2 = greeting;//表示被指物为常量
//char const *p2;与上语句相同
char* const p3 = greeting;//表示指针本身为常量
const char* const p4 = greeting;//两者都是常量




enum day {
	//枚举，逗号隔开，最后的Sat后面可以没有逗号
	//整型
	Sun=3, Mon, Tue, Wed, Thu, Fri, Sat,
}work;