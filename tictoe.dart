List<String> board = List.filled(9, "");
String currentPlayer = "X";

bool _makeMove(int row, int col) {
  if (board[row * 3 + col] == "") {
    board[row * 3 + col] = currentPlayer;
    currentPlayer = currentPlayer == "X" ? "O" : "X";
    return true;
  }
  return false;
}

bool _checkForWin() {
  for (int i = 0; i < 3; i++) {
    // Check rows and columns
    if (board[i * 3] == board[i * 3 + 1] && board[i * 3] == board[i * 3 + 2]) {
      return true;
    }
    if (board[i] == board[i + 3] && board[i] == board[i + 6]) {
      return true;
    }
  }
  // Check diagonals
  if (board[0] == board[4] && board[0] == board[8]) {
    return true;
  }
  if (board[2] == board[4] && board[2] == board[6]) {
    return true;
  }
  return false;
}

bool _isBoardFull() {
  return !board.contains("");
}

void _resetGame() {
  board = List.filled(9, "");
  currentPlayer = "X";
}

void main() {
  // ... your game loop and UI logic ...

  // Make a move
  if (_makeMove(1, 1)) {
    // Check for winner or draw
    if (_checkForWin()) {
      print("$currentPlayer wins!");
    } else if (_isBoardFull()) {
      print("It's a draw!");
    }
  } else {
    print("Invalid move!");
  }

  // ... continue game or reset ...
}
