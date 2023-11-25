# Prolog Game: Iterative Deepening Path Finder

Welcome to the Prolog Game project! This project is a game implemented in Prolog where you design a 5 x 5 matrix containing obstacles, a final position, and an initial position. The goal is to find the optimal path from the initial position to the final position using Iterative Deepening, and the result is visually represented in a Graphical User Interface (GUI).

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [How to Play](#how-to-play)
- [Algorithm](#algorithm)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Prolog Game project is a fun and challenging game where you navigate through a matrix filled with obstacles to reach the final position. The game utilizes Prolog for its logic and Iterative Deepening to find the optimal path. The graphical representation of the game makes it enjoyable and engaging.

## Features

- **Matrix Design**: Create a custom 5 x 5 matrix with obstacles, a final position, and an initial position.
- **User Input**: Input the initial position through user interaction.
- **Iterative Deepening**: Utilize the Iterative Deepening algorithm to find the optimal path to the final position.
- **Graphical User Interface**: Visualize the game and the path finding results in a user-friendly GUI.

## Getting Started

To get started with the Prolog Game, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/prolog-game.git
    ```

2. Ensure you have Prolog installed on your machine.

3. Run the game script:

    ```bash
    swipl game.pl
    ```

4. Follow the on-screen instructions to design the matrix and provide the initial position.

## How to Play

1. Design the matrix by specifying the positions of obstacles, the final position, and the initial position.

2. Input the initial position when prompted.

3. Watch as the Iterative Deepening algorithm finds the optimal path to the final position.

4. Explore the graphical representation of the game in the GUI.

## Algorithm

The game utilizes the Iterative Deepening algorithm to find the optimal path. Iterative Deepening is a depth-first search algorithm with an increasing depth limit. It ensures an optimal solution while avoiding the drawbacks of pure depth-first search.

## Screenshots

![Game Screenshot](screenshots/game.png)

*Add more screenshots here to showcase different stages of the game.*

## Contributing

If you would like to contribute to the project, feel free to submit pull requests. Contributions are always welcome!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
