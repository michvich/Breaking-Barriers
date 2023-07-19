#include<iostream>
#include<string>
using namespace std;

int main()
{
	//Introduce Breaking Barriers
	cout << "Breaking Barriers!" << endl;
	cout << "Breaking Barriers is a movement that is dedicated to helping people realize their true potential." << endl;
	
	//Declare Variables
	string firstname;
	string lastname;
	int age;
	string goal;
	
	//Prompt User for Information
	cout << "Please enter your first name: " << endl;
	cin >> firstname;
	cout << "Please enter your last name: " << endl;
	cin >> lastname;
	cout << "Please enter your age: " << endl;
	cin>> age;
	cout << "What is your goal? " << endl;
	cin >> goal;
	
	//Introduce User
	cout << "Hello " << firstname << " " << lastname << "!" << endl;
	cout << "You are " << age << " years old." << endl;
	cout << "Your goal is to " << goal << "." << endl;
	
	//Info About Breaking Barriers
	cout << "Breaking Barriers is about learning from others, and helping others learn." << endl;
	cout << "We believe that everyone should have the chance to follow their dreams and make their own destiny." << endl;
	cout << "We strive to empower those who have faced difficult challenges and situations that have hindered their progress." << endl;
	cout << "We believe that if you have the courage and determination to fight for what you want, you can succeed." << endl;
	
	//Call to Action
	cout << "Join the Breaking Barriers movement and be a part of the journey to help others realize their true potential." << endl;
	cout << "Together, we can break down the barriers that keep us from achieving our goals and reaching our dreams." << endl;
	
	return 0;
}