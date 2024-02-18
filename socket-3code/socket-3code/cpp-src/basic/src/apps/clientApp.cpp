#include <iostream>
#include <iomanip>
#include <sstream>
#include <thread>
#include <string>

#include "socket/client.hpp"

/**
 * @brief basic starting point 
 *
 *      Author: gash
 */
int main(int argc, char **argv) {
   basic::BasicClient clt;
    clt.connect();

    std::stringstream msg;
    msg << "hello. My name is inigo montoya." << std::ends;
    clt.sendMessage(msg.str());

    std::string input;
    while (true) {
        std::cout << "Enter message (or type 'exit' to quit): ";
        std::getline(std::cin, input);
        if (input == "exit") {
            break;
        }

        std::stringstream msg;
        msg << input << std::ends; // Using std::ends might not be necessary depending on how you handle strings.
        clt.sendMessage(msg.str());

        // Optional: Wait a bit before the next message.
        std::this_thread::sleep_for(std::chrono::milliseconds(200));
    }

    std::cout << "Client exiting..." << std::endl;
     
    std::cout << "sleeping a bit before exiting..." << std::endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(2000));
}
