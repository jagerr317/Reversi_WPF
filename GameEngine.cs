﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Reversi
{
    class GameEngine : GameEngineInterface
    {

        RuleEngine ruleBook;
        Board board;
        
        public bool blackTurn = true;
        public int blackScore;
        public int whiteScore;
        //OthelloLinqLayer.OthelloSaver a = new OthelloLinqLayer.OthelloSaver();

        public GameEngine()
        {
            ruleBook = new RuleEngine();
            board = new Board();
           // board = a.getBoard("test.xml");
            //blackTurn = a.getTurn("test.xml");

        }

        public void resetGame()
        {
            board.ResetBoard();
            calcScore();
        }

        public bool hasPossibleMove(bool black)
        {
            return ruleBook.PossibleMoves(board, new Tile(black)).Count > 0;
        }


        public Board getBoard()
        {
            return board;
        }




        public void AI_move()
        {
            int bestscore_AI;
            int[] bestmove_AI = new int[2];

            bestscore_AI = calcScore_AI(board)[1];            

            Tile tile = new Tile(false);

            List<int[]> possibleMoves = ruleBook.PossibleMoves(board, tile);

            foreach (int[] item in possibleMoves)
            {
                Board AI_board = new Board();

                AI_board = makeBoard(board);

                if (ruleBook.CanPlaceTile(AI_board, tile, item[0], item[1]))
                {
                    AI_board.matrix[item[0], item[1]] = tile;

                    foreach (int[] pos in ruleBook.RELATIVEPOSITION)
                    {
                        int nextX = item[0] + pos[0];
                        int nextY = item[1] + pos[1];
                        List<Tile> tileList = new List<Tile>();
                        int i = 1;

                        while (!ruleBook.PosOutOfBounds(nextX, nextY) && AI_board.matrix[nextX, nextY] != null && AI_board.matrix[nextX, nextY].isBlack != tile.isBlack)
                        {
                            tileList.Add(AI_board.matrix[nextX, nextY]);
                            ++i;
                            nextX = item[0] + pos[0] * i;
                            nextY = item[1] + pos[1] * i;
                        }
                        if (!ruleBook.PosOutOfBounds(nextX, nextY) && AI_board.matrix[nextX, nextY] != null && AI_board.matrix[nextX, nextY].isBlack == tile.isBlack)
                        {
                            foreach (Tile flip in tileList)
                            {
                                flip.Flip();
                            }
                        }
                    }
                }
                if (calcScore_AI(AI_board)[1] > bestscore_AI)
                {                    
                    bestscore_AI = calcScore_AI(AI_board)[1];
                    bestmove_AI[0] = item[0];
                    bestmove_AI[1] = item[1];
                }
                AI_board = null;
            }

            PlaceTile(bestmove_AI[0], bestmove_AI[1]);    
        }


        public bool PlaceTile(int x, int y)
        {
            Tile tile = new Tile(blackTurn);
            bool movementDone = false;

            if (ruleBook.CanPlaceTile(board, tile, x, y))
            {
                // Place the new tile when we know it's a valid move.
                board.matrix[x, y] = tile;
                movementDone = true;
                // Flip bool to indicate next player's turn.               

                // Flip tiles in all directions.
                foreach (int[] pos in ruleBook.RELATIVEPOSITION)
                {
                    int nextX = x + pos[0];
                    int nextY = y + pos[1];
                    List<Tile> tileList = new List<Tile>();
                    int i = 1;

                    while (!ruleBook.PosOutOfBounds(nextX, nextY) && board.matrix[nextX, nextY] != null && board.matrix[nextX, nextY].isBlack != tile.isBlack)
                    {
                        tileList.Add(board.matrix[nextX, nextY]);
                        ++i;
                        nextX = x + pos[0] * i;
                        nextY = y + pos[1] * i;
                    }

                    if (!ruleBook.PosOutOfBounds(nextX, nextY) && board.matrix[nextX, nextY] != null && board.matrix[nextX, nextY].isBlack == tile.isBlack)
                    {
                        foreach (Tile flip in tileList)
                        {
                            flip.Flip();
                        }
                    }
                }
            }
            calcScore();

            // a.save(board, blackTurn);
            // Return the currect board.
            if (movementDone)
            {
                blackTurn = !blackTurn;
                return true;
            }
            return false;
        }

        private Board makeBoard(Board _board)
        {
            Board newBoard = new Board();

            for (int i = 0; i < 8; i++)
            {
                for (int j = 0; j < 8; j++)
                {
                    if (_board.matrix[i, j] is Tile)
                    {
                        if (_board.matrix[i, j].isBlack)
                        {
                            newBoard.matrix[i, j] = new Tile(true);
                        }
                        if (!_board.matrix[i, j].isBlack)
                        {
                            newBoard.matrix[i, j] = new Tile(false);
                        }
                    }
                    else 
                       newBoard.matrix[i, j] = null;
                }

            }

            return newBoard;
        }


        private void calcScore()
        {
            blackScore = 0;
            whiteScore = 0;

            for (int i = 0; i < 8; i++)
            {
                for (int j = 0; j < 8; j++)
                {
                    if (board.matrix[i, j] is Tile)
                    {
                        if (board.matrix[i, j].isBlack)
                        {
                            blackScore++;
                        }
                        else
                        {
                            whiteScore++;
                        }
                    }
                }
            }
        }

        private int[] calcScore_AI(Board _board)
        {
            blackScore = 0;
            whiteScore = 0;

            for (int i = 0; i < 8; i++)
            {
                for (int j = 0; j < 8; j++)
                {
                    if (_board.matrix[i, j] is Tile)
                    {
                        if (_board.matrix[i, j].isBlack)
                        {
                            blackScore++;
                        }
                        else if(!_board.matrix[i, j].isBlack)
                        {
                            whiteScore++;
                        }
                    }
                }
            }
            return new int[2] { blackScore, whiteScore };
        }
    }
}
