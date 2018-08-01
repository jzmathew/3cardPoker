#include <vector>
#ifndef DATA_H
#define DATA_H

using namespace std;

//keep int first to optmize mem mgmt
//holds, card values, defualt constructor
struct Card {
	Card(const int value, char suit) : value(value), suit(suit){}
	int value;
	char suit;
	//custom boolean operator for sorting
	bool operator < (const Card& card) const{
		return (value < card.value);
	}


};

struct Hand {
	vector<Card> hand;
};



#endif