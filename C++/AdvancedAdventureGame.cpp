#include <iostream>
#include <string>
#include <vector>
#include <cstdlib>
#include <ctime>

using namespace std;

class Player {
public:
    string name;
    int health;
    vector<string> inventory;

    Player(string playerName) : name(playerName), health(100) {}

    void addItem(string item) {
        inventory.push_back(item);
    }

    void displayStatus() {
        cout << "Player: " << name << "\nHealth: " << health << "\nInventory: ";
        for (size_t i = 0; i < inventory.size(); ++i) {
            cout << inventory[i] << " ";
        }
        cout << "\n" << endl;
    }
};

void displayIntroduction() {
    cout << "Welcome to the Advanced Adventure Game!" << endl;
    cout << "You find yourself standing in an open field, filled with grass and yellow wildflowers." << endl;
    cout << "Rumor has it that a wicked dragon is somewhere around here, and you have a sword with you." << endl;
    cout << "In front of you is a forest. To your right, a cave. Behind you, a mountain." << endl;
}

void battle(Player &player, string enemy, int enemyHealth) {
    cout << "You encounter a " << enemy << "!" << endl;
    while (enemyHealth > 0 && player.health > 0) {
        cout << "You attack the " << enemy << "!" << endl;
        int playerAttack = rand() % 20 + 10;
        enemyHealth -= playerAttack;
        cout << "You dealt " << playerAttack << " damage. Enemy health: " << max(0, enemyHealth) << endl;

        if (enemyHealth <= 0) {
            cout << "You defeated the " << enemy << "!" << endl;
            return;
        }

        int enemyAttack = rand() % 20 + 5;
        player.health -= enemyAttack;
        cout << "The " << enemy << " attacks you! You lose " << enemyAttack << " health. Your health: " << max(0, player.health) << endl;

        if (player.health <= 0) {
            cout << "You were defeated by the " << enemy << "..." << endl;
            return;
        }
    }
}

void forestAdventure(Player &player) {
    cout << "You walk into the forest. The trees are tall and the air is fresh." << endl;
    cout << "You find a potion on the ground and add it to your inventory." << endl;
    player.addItem("Potion");

    cout << "Suddenly, you hear a rustling sound. It's a wild animal!" << endl;
    battle(player, "wild animal", 50);
}

void caveAdventure(Player &player) {
    cout << "You enter the cave. It's dark and cold." << endl;
    cout << "As you move deeper, you find a shield and add it to your inventory." << endl;
    player.addItem("Shield");

    cout << "As you venture further, you hear a growl. It's the dragon!" << endl;
    battle(player, "dragon", 100);
}

void mountainAdventure(Player &player) {
    cout << "You climb the mountain. The view from the top is breathtaking." << endl;
    cout << "You find a treasure chest containing gold and add it to your inventory." << endl;
    player.addItem("Gold");

    cout << "But be careful, the path down is treacherous. You encounter a mountain lion!" << endl;
    battle(player, "mountain lion", 70);
}

int main() {
    srand(static_cast<unsigned int>(time(0)));
    string playerName;
    string choice;

    cout << "Enter your player's name: ";
    cin >> playerName;
    Player player(playerName);

    displayIntroduction();

    while (true) {
        player.displayStatus();
        cout << "Where would you like to go? (forest/cave/mountain): ";
        cin >> choice;

        if (choice == "forest") {
            forestAdventure(player);
        } else if (choice == "cave") {
            caveAdventure(player);
        } else if (choice == "mountain") {
            mountainAdventure(player);
        } else {
            cout << "Invalid choice. Please choose again." << endl;
            continue;
        }

        if (player.health <= 0) {
            cout << "Game over. You have been defeated." << endl;
            break;
        }

        cout << "Do you want to explore another location? (yes/no): ";
        cin >> choice;

        if (choice == "no") {
            break;
        }
    }

    cout << "Thank you for playing the Advanced Adventure Game!" << endl;
    return 0;
}

