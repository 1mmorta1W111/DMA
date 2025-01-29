// 20. Игра "Крестики-нолики"
// Разработайте классы для игры "Крестики-нолики".
// Создайте класс Game, который управляет логикой игры, и классы Player, описывающие поведение игроков.

class Player {
  String name;
  String symbol;

  Player(this.name, this.symbol);
}

class Game {
  List<List<String>> _board = List.generate(3, (_) => List.filled(3, " "));
  Player player1;
  Player player2;
  Player currentPlayer;

  Game(this.player1, this.player2) : currentPlayer = player1;

  void displayBoard() {
    for (var row in _board) {
      print(row.join(" | "));
    }
    print("\n");
  }

  bool makeMove(int row, int col) {
    if (_board[row][col] == " ") {
      _board[row][col] = currentPlayer.symbol;
      return true;
    }
    print("Ячейка уже занята! Попробуйте снова.");
    return false;
  }

  bool checkWin() {
    for (int i = 0; i < 3; i++) {
      if (_board[i][0] != " " && _board[i][0] == _board[i][1] && _board[i][1] == _board[i][2]) return true;
      if (_board[0][i] != " " && _board[0][i] == _board[1][i] && _board[1][i] == _board[2][i]) return true;
    }
    if (_board[0][0] != " " && _board[0][0] == _board[1][1] && _board[1][1] == _board[2][2]) return true;
    if (_board[0][2] != " " && _board[0][2] == _board[1][1] && _board[1][1] == _board[2][0]) return true;
    return false;
  }

  bool isBoardFull() {
    for (var row in _board) {
      if (row.contains(" ")) return false;
    }
    return true;
  }

  void switchPlayer() {
    currentPlayer = (currentPlayer == player1) ? player2 : player1;
  }
}
