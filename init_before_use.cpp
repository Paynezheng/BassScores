#include<iostream>
using namespace std;

class test {
public:
	test();
	int a;
	int b;
	int c;
	int d;
};

//此处使用初值列和赋值速度相同
test::test() :a(1),b(a),c(3),d(4)
{}

class test1 {
public:
	test1();
	int a;
	int b;
	int c;
	int d;
};

//成员变量总是按声明顺序初始化，a初始化时b尚未初始化
test1::test1():b(2),a(b), c(3), d(4)
{}

class test2 {
public:
	test2(const int z);
	int a;
	int b;
	int c;
	int d;
};

//复制对象要比复制速度快
test2::test2(const int z): b(z), a(z), c(z), d(z)
{}

int main() {
	test sample;
	test1 sample1;
	test2 sample2(2);
	//输出1134
	cout << sample.a << " " << sample.b << " " << sample.c << " " << sample.d << "\n";
	//a读取了随机bit
	cout << sample1.a << " " << sample1.b << " " << sample1.c << " " << sample1.d << "\n";
	//这就很快了（当然这里是看不出来的自己想象）
	cout << sample2.a << " " << sample2.b << " " << sample2.c << " " << sample2.d << "\n";
	system("pause");
	return 0;
}