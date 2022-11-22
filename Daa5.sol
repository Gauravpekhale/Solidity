n = int(input("Enter the value of n : "))
board = []     #n x n chessboard

def getBoard(): #define the board
    for i in range(n):
        nthList = []
        for j in range(n):
            nthList.append(0)
        board.append(nthList)
        
def printBoard():
    for i in range(n):
        for j in range(n):
            print(board[i][j], end = " ")
        print(" ")
        
def isSafe(row, col):
    for i in range(n): #checks row
        if board[row][i]==1:
            return False
        
    for j in range(n): #checks column
        if board[j][col]==1:
            return False
            
    i = row -1 #North West
    j = col -1
    while(i>=0 and j>=0):
        if board[i][j]==1:
            return False
        i = i-1
        j = j-1

    i = row - 1 #North East
    j = col + 1
    while(i>=0 and j<n):
        if board[i][j]==1:
            return False
        i = i - 1
        j = j + 1

    i = row + 1 #south west
    j = col - 1
    while(i<n and j>=0):
        if board[i][j]==1:
            return False
        i = i + 1
        j = j - 1

    i = row + 1 #South East
    j = col + 1
    while(i<n and j<n):
        if board[i][j]==1:
            return False

        i = i + 1
        j = j + 1
    return True
    
def put(n, count):
    if count==n: #No.of queens currently present on Board
        return True #All queens Placed
    for i in range(n):
        for j in range(n):
            if isSafe(i, j):
                board[i][j] = 1
                count = count + 1
                if put(n, count)==True:
                    return True
                board[i][j] = 0
                count = count - 1
    return False

getBoard()
put(n,0)
printBoard()
