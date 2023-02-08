#include <stdio.h>
#include <stdbool.h>


#define TAILLE_CELL 5	// Taille de chaque dimension de la matrice de matrice, doit faire au moins 5
#define NB_PIECES 36    // nombre de pièces dans le jeu, donné à titre indicatif (ne pas modifier)
#define NB_PLAYERS 2    // Nombre de joueurs, donné à titre indicatif
#define END_CHAR 'n'	// indique le caractère que l'on doit entrer pour arreter de jouer quand on nous pose la question


void _2d_fill_with_b(int dim1_taille, int dim2_taille, bool tab[dim1_taille][dim2_taille], bool b) {
	for (int i=0; i<dim1_taille; i++) {
		for (int j=0; j<dim2_taille; j++) {
			tab[i][j] = b;
		}
	}
}

void _4d_fill_with_n(int taille, int tab[taille][taille][taille][taille], int n) {
	for (int i=0; i<taille; i++) {
		for (int j=0; j<taille; j++) {
			for (int k=0; k<taille; k++) {
				for (int l=0; l<taille; l++) {
					tab[i][j][k][l] = n;
				}
			}
		}
	}
}

void _4d_fill_with_b(int taille, int tab[taille][taille][taille][taille], bool b) {
	for (int i=0; i<taille; i++) {
		for (int j=0; j<taille; j++) {
			for (int k=0; k<taille; k++) {
				for (int l=0; l<taille; l++) {
					tab[i][j][k][l] = b;
				}
			}
		}
	}
}

void _5d_fill_with_b(int taille_4_prem_dim, int taille_5eme_dim, int tab[taille_4_prem_dim][taille_4_prem_dim][taille_4_prem_dim][taille_4_prem_dim][taille_5eme_dim], bool b) {
	for (int i=0; i<taille_4_prem_dim; i++) {
		for (int j=0; j<taille_4_prem_dim; j++) {
			for (int k=0; k<taille_4_prem_dim; k++) {
				for (int l=0; l<taille_4_prem_dim; l++) {
					for (int m=0; m<taille_5eme_dim; m++) {
						tab[i][j][k][l][m] = b;
					}
				}
			}
		}
	}
}

void affiche_sur_terminal_4d(int taille, int tab[taille][taille][taille][taille]) {
	for (int i=0; i<taille; i++) {
		for (int j=0; j<taille; j++) {
			for (int k=0; k<taille; k++) {
				for (int l=0; l<taille; l++) {
					printf("%d", tab[i][k][j][l]);
					if (l < taille-1) {
						printf(", ");
					}
				}
				if (k < taille-1) {
						printf("\t");
				}
			}
			if (j < taille-1) {
				printf("\n");
			}
		}
		if (i < taille-1) {
			printf("\n\n");
		}
	}
	printf("\n");
}

void affiche_sur_terminal_2d(int dim1_taille, int dim2_taille, int tab[dim1_taille][dim2_taille]) {
	for (int i=0; i<dim1_taille; i++) {
		for (int j=0; j<dim2_taille; j++) {
			printf("%d", tab[i][j]);
			if (j < dim2_taille-1) {
				printf(", ");
			}
		}
		if (i < dim1_taille-1) {
			printf("\n");
		}
	}
}

void init_pieces(int taille, int nb_pieces, int pieces[taille][taille][taille][taille][nb_pieces]) {
	_5d_fill_with_b(TAILLE_CELL, NB_PIECES-1, pieces, false);

	//pièce de longueur 1:
	pieces[0][0][0][0][0] = true;

	//pièce de longueur 2:
	pieces[0][0][0][0][1] = true;
	pieces[1][0][0][0][1] = true;

	//pièces de longueur 3:
	pieces[0][0][0][0][2] = true;
	pieces[1][0][0][0][2] = true;
	pieces[2][0][0][0][2] = true;

	pieces[0][0][0][0][3] = true;
	pieces[1][0][0][0][3] = true;
	pieces[0][1][0][0][3] = true;

	//pièces de longueur 4:
	pieces[0][0][0][0][4] = true;
	pieces[1][0][0][0][4] = true;
	pieces[2][0][0][0][4] = true;
	pieces[3][0][0][0][4] = true;

	pieces[0][0][0][0][5] = true;
	pieces[1][0][0][0][5] = true;
	pieces[2][0][0][0][5] = true;
	pieces[0][1][0][0][5] = true;

	pieces[0][0][0][0][6] = true;
	pieces[1][0][0][0][6] = true;
	pieces[2][0][0][0][6] = true;
	pieces[0][1][0][0][6] = true;

	pieces[0][0][0][0][7] = true;
	pieces[1][0][0][0][7] = true;
	pieces[2][0][0][0][7] = true;
	pieces[1][1][0][0][7] = true;

	pieces[0][0][0][0][8] = true;
	pieces[1][0][0][0][8] = true;
	pieces[0][1][0][0][8] = true;
	pieces[0][0][1][0][8] = true;

	pieces[0][0][0][0][9] = true;
	pieces[1][0][0][0][9] = true;
	pieces[0][1][0][0][9] = true;
	pieces[0][1][1][0][9] = true;

	pieces[0][0][0][0][10] = true;
	pieces[1][0][0][0][10] = true;
	pieces[1][1][0][0][10] = true;
	pieces[2][1][1][0][10] = true;

	//pièces de longueur 5:
	pieces[0][0][0][0][11] = true;
	pieces[1][0][0][0][11] = true;
	pieces[2][0][0][0][11] = true;
	pieces[3][0][0][0][11] = true;
	pieces[4][0][0][0][11] = true;

	pieces[0][0][0][0][12] = true;
	pieces[1][0][0][0][12] = true;
	pieces[2][0][0][0][12] = true;
	pieces[3][0][0][0][12] = true;
	pieces[0][1][0][0][12] = true;
	
	pieces[0][0][0][0][13] = true;
	pieces[1][0][0][0][13] = true;
	pieces[2][0][0][0][13] = true;
	pieces[3][0][0][0][13] = true;
	pieces[1][1][0][0][13] = true;

	pieces[0][0][0][0][14] = true;
	pieces[1][0][0][0][14] = true;
	pieces[2][0][0][0][14] = true;
	pieces[2][1][0][0][14] = true;
	pieces[3][1][0][0][14] = true;

	pieces[0][0][0][0][15] = true;
	pieces[1][0][0][0][15] = true;
	pieces[2][0][0][0][15] = true;
	pieces[2][1][0][0][15] = true;
	pieces[2][2][0][0][15] = true;

	pieces[0][0][0][0][16] = true;
	pieces[1][0][0][0][16] = true;
	pieces[2][0][0][0][16] = true;
	pieces[1][1][0][0][16] = true;
	pieces[2][1][0][0][16] = true;

	pieces[0][0][0][0][17] = true;
	pieces[1][0][0][0][17] = true;
	pieces[2][0][0][0][17] = true;
	pieces[1][1][0][0][17] = true;
	pieces[1][2][0][0][17] = true;

	pieces[1][0][0][0][18] = true;
	pieces[0][1][0][0][18] = true;
	pieces[1][1][0][0][18] = true;
	pieces[2][1][0][0][18] = true;
	pieces[1][2][0][0][18] = true;

	pieces[1][0][0][0][19] = true;
	pieces[0][0][0][0][19] = true;
	pieces[1][1][0][0][19] = true;
	pieces[2][1][0][0][19] = true;
	pieces[1][2][0][0][19] = true;

	pieces[1][0][0][0][20] = true;
	pieces[0][0][0][0][20] = true;
	pieces[1][1][0][0][20] = true;
	pieces[2][2][0][0][20] = true;
	pieces[1][2][0][0][20] = true;
	
	pieces[1][0][0][0][21] = true;
	pieces[0][0][0][0][21] = true;
	pieces[2][0][0][0][21] = true;
	pieces[2][1][0][0][21] = true;
	pieces[2][1][1][0][21] = true;

	pieces[1][0][0][0][22] = true;
	pieces[0][0][0][0][22] = true;
	pieces[2][0][0][0][22] = true;
	pieces[2][1][0][0][22] = true;
	pieces[2][0][1][0][22] = true;

	pieces[1][0][0][0][23] = true;
	pieces[0][0][0][0][23] = true;
	pieces[2][0][0][0][23] = true;
	pieces[2][1][0][0][23] = true;
	pieces[1][0][1][0][23] = true;

	pieces[1][0][0][0][24] = true;
	pieces[0][0][0][0][24] = true;
	pieces[2][0][0][0][24] = true;
	pieces[2][1][0][0][24] = true;
	pieces[0][0][1][0][24] = true;

	pieces[1][0][0][0][25] = true;
	pieces[0][0][0][0][25] = true;
	pieces[1][1][0][0][25] = true;
	pieces[2][1][0][0][25] = true;
	pieces[0][0][1][0][25] = true;
	
	pieces[1][0][0][0][26] = true;
	pieces[0][0][0][0][26] = true;
	pieces[1][1][0][0][26] = true;
	pieces[2][1][0][0][26] = true;
	pieces[0][0][1][0][26] = true;

	pieces[1][0][0][0][27] = true;
	pieces[0][0][0][0][27] = true;
	pieces[1][1][0][0][27] = true;
	pieces[2][1][0][0][27] = true;
	pieces[0][1][1][0][27] = true;

	pieces[1][0][0][0][28] = true;
	pieces[0][0][0][0][28] = true;
	pieces[2][0][0][0][28] = true;
	pieces[1][1][0][0][28] = true;
	pieces[0][0][1][0][28] = true;

	pieces[1][0][0][0][29] = true;
	pieces[0][0][0][0][29] = true;
	pieces[2][0][0][0][29] = true;
	pieces[1][1][0][0][29] = true;
	pieces[0][0][1][0][29] = true;
	
	pieces[1][0][0][0][30] = true;
	pieces[0][0][0][0][30] = true;
	pieces[2][0][0][0][30] = true;
	pieces[1][1][0][0][30] = true;
	pieces[1][0][1][0][30] = true;

	pieces[1][0][0][0][31] = true;
	pieces[0][0][0][0][31] = true;
	pieces[0][0][1][0][31] = true;
	pieces[0][1][0][0][31] = true;
	pieces[1][1][0][0][31] = true;
	
	pieces[1][1][1][1][32] = true;
	pieces[2][1][1][1][32] = true;
	pieces[1][1][2][1][32] = true;
	pieces[1][1][1][2][32] = true;
	pieces[1][2][1][1][32] = true;

	pieces[1][1][1][1][33] = true;
	pieces[2][1][1][1][33] = true;
	pieces[1][1][2][1][33] = true;
	pieces[1][1][1][0][33] = true;
	pieces[1][2][1][1][33] = true;
	
	pieces[1][1][1][1][34] = true;
	pieces[2][1][1][1][34] = true;
	pieces[1][1][2][1][34] = true;
	pieces[2][1][1][2][34] = true;
	pieces[1][2][1][1][34] = true;
	
	pieces[1][1][1][1][35] = true;
	pieces[2][1][1][1][35] = true;
	pieces[1][1][2][1][35] = true;
	pieces[2][1][1][0][35] = true;
	pieces[1][2][1][1][35] = true;
	
}

bool between(int bottom, int n, int top) {
	return (bottom <= n) && (n <= top);
}

void affiche_pieces_non_utilisees(int dim1_taille, int dim2_taille, bool tab[dim1_taille][dim2_taille], int joueur) {
	printf("Piece(s) non utilisee(s): ");
	int premiere_piece_non_utilisee = -1;
	int i=0;
	while (premiere_piece_non_utilisee == -1) {
		if (i > dim1_taille) {
			break;
		}
		else if (!tab[i][joueur-1]) {
			premiere_piece_non_utilisee = i;
		}
		i++;
	}
	if (premiere_piece_non_utilisee != -1) {
		printf("%d", premiere_piece_non_utilisee+1);
	}
	for (i=premiere_piece_non_utilisee+1; i< dim1_taille; i++) {
		if (!tab[i][joueur-1]) {
			printf(", %d", i+1);
		}
	}
	printf("\n");
}


int main() {
	int board[TAILLE_CELL][TAILLE_CELL][TAILLE_CELL][TAILLE_CELL];
	_4d_fill_with_n(TAILLE_CELL, board, 1094257386);	/*board contient l'état actuel du plateau (1 si pièce du J1
		présente, 2 si pièce du J2 présente, 3 si tentative de pose et que pièce du J1 présente, et 4 si
		tentative de pose et que pièce du J2 présente, et 0 sinon)*/
	int player1[TAILLE_CELL][TAILLE_CELL][TAILLE_CELL][TAILLE_CELL];
	_4d_fill_with_b(TAILLE_CELL, player1, false);	//player1 contient true si il y a une pièce du joueur 1, false sinon
	int player2[TAILLE_CELL][TAILLE_CELL][TAILLE_CELL][TAILLE_CELL];
	_4d_fill_with_b(TAILLE_CELL, player2, false);	//player2 contient true si il y a une pièce du joueur 2, false sinon

	//board[1][2][3][4] = 5; affiche_sur_terminal_4d(TAILLE_CELL, board);	//affichage de débugage

	//met les emplacement de base du J1 et du J2 sur le plateau
	player1[1][1][1][1] = 1;
	board[1][1][1][1] = 1;
	player2[TAILLE_CELL-2][TAILLE_CELL-2][TAILLE_CELL-2][TAILLE_CELL-2] = 1;
	board[TAILLE_CELL-2][TAILLE_CELL-2][TAILLE_CELL-2][TAILLE_CELL-2] = 2;
	
	bool listepieces[NB_PIECES][NB_PLAYERS];	// listepieces dit si chaque pièce a déja étée utilisée par le J1 et le J2
	_2d_fill_with_b(NB_PIECES, NB_PLAYERS, listepieces, false);

	//affiche_sur_terminal_2d(NB_PIECES, 2, listepieces);	//affichage de débugage

	int score[NB_PLAYERS] = {0, 0};	//indique le score du J1, puis du J2
	bool inGame[NB_PLAYERS] = {true, true};	//indique si le J1, puis le J2, joue toujours

	int pieces[TAILLE_CELL][TAILLE_CELL][TAILLE_CELL][TAILLE_CELL][NB_PIECES];
	init_pieces(TAILLE_CELL, NB_PIECES, pieces);	//contient les emlacements de base de chaque pièce

	int playernumber = 1;	//initialise le tour au J1

	while (inGame[0] || inGame[1]) {	//tant qu'1 des 2 J joue toujours
		if (inGame[playernumber-1]) {	//vérifie si le joueur dont c'est le tour joue toujours, passe son tour sinon
			printf("ready, player %d\n", playernumber);	//affichage de à qui c'est le tour
			affiche_pieces_non_utilisees(NB_PIECES, NB_PLAYERS, listepieces, playernumber);
			int piecenumber;	//contient la pièce que le numéro de la pièce que le joueur veut jouer
			do {
				printf("Veuillez donnez le numero de la piece que vous voulez mettre:");
				scanf("%d", &piecenumber);
				printf("\n");
				if (listepieces[piecenumber-1][playernumber-1]) {	//si la pièce a déja étée utilisée
					printf("Piece %d deja utilisee.\n", piecenumber);
					affiche_pieces_non_utilisees(NB_PIECES, NB_PLAYERS, listepieces, playernumber);
				}
				else  if (between(1, piecenumber, NB_PIECES)) {	//marque la pièce comme utilisée si elle est choisie par le joueur et est valide
					listepieces[piecenumber-1][playernumber-1] = true;
					break;	//sors de la boucle while car on a le numéro de pièce recherché
				}
			} while (!between(1, piecenumber, NB_PIECES) || (listepieces[piecenumber-1][playernumber-1]));	//recommence si le numéro donné n'est pas valide
		
			printf("état actuel du plateau\n");
			affiche_sur_terminal_4d(TAILLE_CELL, board); printf("\n");
		}



		if (playernumber == 1) {playernumber=2;} else {playernumber=1;}	//switch de joueur
	}
	return 0;
}
