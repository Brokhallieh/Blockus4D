State=zeros(5,5,5,5);
Statejoueur1=zeros(5,5,5,5);
Statejoueur1(2,2,2,2)=1;
State(2,2,2,2)=2;
Statejoueur2=zeros(5,5,5,5);
Statejoueur2(4,4,4,4)=1;
State(4,4,4,4)=1;
listepieces=zeros(37,2);
listepieces(37,1)=1;
listepieces(37,2)=1;
for i=1:5
    for j=1:5
                            objshow3(:,:)=reshape(uint8(State(i,j,:,:).*255./5),5,5);
                            subplot(5,5,5*(i-1)+j)
                            clims=[0 255];
                            imagesc(objshow3,clims)
                            colormap(turbo)
%                            objshow=reshape(State(i,j,:,:),5,5);
%                            subplot(5,5,5*(i-1)+j)
%                            imshow(objshow,[0 5]);
    end
end

Score=zeros(2);
Ingame=ones(2,1);

piece=zeros(5,5,5,5,2);

piece(1,1,1,1,1)=1;

piece(1,1,1,1,2)=1;
piece(2,1,1,1,2)=1;

piece(1,1,1,1,3)=1;
piece(2,1,1,1,3)=1;
piece(3,1,1,1,3)=1;

piece(1,1,1,1,4)=1;
piece(2,1,1,1,4)=1;
piece(1,2,1,1,4)=1;

piece(1,1,1,1,5)=1;
piece(2,1,1,1,5)=1;
piece(3,1,1,1,5)=1;
piece(4,1,1,1,5)=1;

piece(1,1,1,1,6)=1;
piece(2,1,1,1,6)=1;
piece(3,1,1,1,6)=1;
piece(1,2,1,1,6)=1;

piece(1,1,1,1,7)=1;
piece(2,1,1,1,7)=1;
piece(1,2,1,1,7)=1;
piece(2,2,1,1,7)=1;

piece(1,1,1,1,8)=1;
piece(2,1,1,1,8)=1;
piece(3,1,1,1,8)=1;
piece(2,2,1,1,8)=1;

piece(1,1,1,1,9)=1;
piece(2,1,1,1,9)=1;
piece(1,2,1,1,9)=1;
piece(1,1,2,1,9)=1;

piece(1,1,1,1,10)=1;
piece(2,1,1,1,10)=1;
piece(1,2,1,1,10)=1;
piece(1,2,2,1,10)=1;

piece(1,1,1,1,11)=1;
piece(2,1,1,1,11)=1;
piece(2,2,1,1,11)=1;
piece(3,2,2,1,11)=1;

piece(1,1,1,1,12)=1;
piece(2,1,1,1,12)=1;
piece(3,1,1,1,12)=1;
piece(4,1,1,1,12)=1;
piece(5,1,1,1,12)=1;

piece(1,1,1,1,13)=1;
piece(2,1,1,1,13)=1;
piece(3,1,1,1,13)=1;
piece(4,1,1,1,13)=1;
piece(1,2,1,1,13)=1;

piece(1,1,1,1,14)=1;
piece(2,1,1,1,14)=1;
piece(3,1,1,1,14)=1;
piece(4,1,1,1,14)=1;
piece(2,2,1,1,14)=1;

piece(1,1,1,1,15)=1;
piece(2,1,1,1,15)=1;
piece(3,1,1,1,15)=1;
piece(3,2,1,1,15)=1;
piece(4,2,1,1,15)=1;

piece(1,1,1,1,16)=1;
piece(2,1,1,1,16)=1;
piece(3,1,1,1,16)=1;
piece(3,2,1,1,16)=1;
piece(3,3,1,1,16)=1;

piece(1,1,1,1,17)=1;
piece(2,1,1,1,17)=1;
piece(3,1,1,1,17)=1;
piece(2,2,1,1,17)=1;
piece(3,2,1,1,17)=1;

piece(1,1,1,1,18)=1;
piece(2,1,1,1,18)=1;
piece(3,1,1,1,18)=1;
piece(2,2,1,1,18)=1;
piece(2,3,1,1,18)=1;

piece(2,1,1,1,19)=1;
piece(1,2,1,1,19)=1;
piece(2,2,1,1,19)=1;
piece(3,2,1,1,19)=1;
piece(2,3,1,1,19)=1;

piece(2,1,1,1,20)=1;
piece(1,1,1,1,20)=1;
piece(2,2,1,1,20)=1;
piece(3,2,1,1,20)=1;
piece(2,3,1,1,20)=1;

piece(2,1,1,1,21)=1;
piece(1,1,1,1,21)=1;
piece(2,2,1,1,21)=1;
piece(3,3,1,1,21)=1;
piece(2,3,1,1,21)=1;

piece(2,1,1,1,22)=1;
piece(1,1,1,1,22)=1;
piece(3,1,1,1,22)=1;
piece(3,2,1,1,22)=1;
piece(3,2,2,1,22)=1;

piece(2,1,1,1,23)=1;
piece(1,1,1,1,23)=1;
piece(3,1,1,1,23)=1;
piece(3,2,1,1,23)=1;
piece(3,1,2,1,23)=1;

piece(2,1,1,1,24)=1;
piece(1,1,1,1,24)=1;
piece(3,1,1,1,24)=1;
piece(3,2,1,1,24)=1;
piece(2,1,2,1,24)=1;

piece(2,1,1,1,25)=1;
piece(1,1,1,1,25)=1;
piece(3,1,1,1,25)=1;
piece(3,2,1,1,25)=1;
piece(1,1,2,1,25)=1;

piece(2,1,1,1,26)=1;
piece(1,1,1,1,26)=1;
piece(2,2,1,1,26)=1;
piece(3,2,1,1,26)=1;
piece(1,1,2,1,26)=1;

piece(2,1,1,1,27)=1;
piece(1,1,1,1,27)=1;
piece(2,2,1,1,27)=1;
piece(3,2,1,1,27)=1;
piece(1,1,2,1,27)=1;

piece(2,1,1,1,28)=1;
piece(1,1,1,1,28)=1;
piece(2,2,1,1,28)=1;
piece(3,2,1,1,28)=1;
piece(1,2,2,1,28)=1;

piece(2,1,1,1,29)=1;
piece(1,1,1,1,29)=1;
piece(3,1,1,1,29)=1;
piece(2,2,1,1,29)=1;
piece(1,1,2,1,29)=1;

piece(2,1,1,1,30)=1;
piece(1,1,1,1,30)=1;
piece(3,1,1,1,30)=1;
piece(2,2,1,1,30)=1;
piece(1,1,2,1,30)=1;

piece(2,1,1,1,31)=1;
piece(1,1,1,1,31)=1;
piece(3,1,1,1,31)=1;
piece(2,2,1,1,31)=1;
piece(2,1,2,1,31)=1;

piece(2,1,1,1,32)=1;
piece(1,1,1,1,32)=1;
piece(1,1,2,1,32)=1;
piece(1,2,1,1,32)=1;
piece(2,2,1,1,32)=1;

piece(2,2,2,2,33)=1;
piece(3,2,2,2,33)=1;
piece(2,2,3,2,33)=1;
piece(2,2,2,3,33)=1;
piece(2,3,2,2,33)=1;

piece(2,2,2,2,34)=1;
piece(3,2,2,2,34)=1;
piece(2,2,3,2,34)=1;
piece(2,2,2,1,34)=1;
piece(2,3,2,2,34)=1;

piece(2,2,2,2,35)=1;
piece(3,2,2,2,35)=1;
piece(2,2,3,2,35)=1;
piece(3,2,2,3,35)=1;
piece(2,3,2,2,35)=1;

piece(2,2,2,2,36)=1;
piece(3,2,2,2,36)=1;
piece(2,2,3,2,36)=1;
piece(3,2,2,1,36)=1;
piece(2,3,2,2,36)=1;

endchar(1)='n';
endchar(2)='n';
playernumber=0;
while (not(not(Ingame(1))*not(Ingame(2))))
    if (not(endchar(playernumber+1)=='f'))
        fprintf('ready, player %d \n',playernumber+1);
        piecenumber=37;
        while(listepieces(piecenumber,playernumber+1)==1)
            piecenumber=input('numero de piece?\n');
            if(listepieces(piecenumber,playernumber+1)==1)
                fprintf('déjà utilisée. Liste des pièces: (1: utilisée, 0: non):')
                listepieces(:,playernumber+1)
            end
        end
        pieceactive=reshape(piece(:,:,:,:,piecenumber),5,5,5,5);
        State=State+pieceactive.*3;
        for i=1:5
            for j=1:5
                            objshow3(:,:)=reshape(uint8(State(i,j,:,:).*255./5),5,5);
                            subplot(5,5,5*(i-1)+j)
                            clims=[0 255];
                            imagesc(objshow3,clims)
                            colormap(turbo)
%                            objshow=reshape(State(i,j,:,:),5,5);
%                            subplot(5,5,5*(i-1)+j)
%                            imshow(objshow,[0 5]);
            end
        end
        motiontoken=1;
        while(motiontoken)
            motionchar=input('translation (t), rotation (r), changement de pièce (c), pose (p) ou saut de tour (autre)? \n','s');
            motiontoken=0;
            if (motionchar=='t')
                motiontoken=1;
                vecttranslat=[0 0 0 1];
                while(not(not(vecttranslat(1))*not(vecttranslat(2))*not(vecttranslat(3))*not(vecttranslat(4))))
                    vecttranslatstr=input('glisse?(non:0 0 0 0,sinon vecteur, i j k l\n','s');
                    vecttranslat=str2num(vecttranslatstr);
                    if(not(not(vecttranslat(1))*not(vecttranslat(2))*not(vecttranslat(3))*not(vecttranslat(4))))
                        State=State-pieceactive.*3;
                        pieceactive=circshift(pieceactive,vecttranslat);
                        State=State+pieceactive.*3;
                    end
                    for i=1:5
                        for j=1:5
                            objshow3(:,:)=reshape(uint8(State(i,j,:,:).*255./5),5,5);
                            subplot(5,5,5*(i-1)+j)
                            clims=[0 255];
                            imagesc(objshow3,clims)
                            colormap(turbo)
%                            objshow=reshape(State(i,j,:,:),5,5);
%                            subplot(5,5,5*(i-1)+j)
%                            imshow(objshow,[0 5]);
                        end
                    end
                end
            elseif(motionchar=='r')
                motiontoken=1;
                pairrotat=[0 1];
                while(not(not(pairrotat(1))*not(pairrotat(2))))
                    pairrotatstr=input('rotation?(non:0 0, sinon vecteur numéros paire d axes de rotation, i j\n','s');
                    pairrotat=str2num(pairrotatstr);
                    if(or((pairrotat==[1 2]),(pairrotat==[2 1])))
                        State=State-pieceactive.*3;
                        pieceactive=permute(pieceactive,[1 2 4 3]);
%                         pieceactive(:,:,:,5:-1:2)=pieceactive(:,:,:,2:1:5);
                        if(pairrotat==[2 1])
                            pieceactive(:,:,:,5:-1:1)=pieceactive(:,:,:,1:1:5);
                        else
                            pieceactive(:,:,5:-1:1,:)=pieceactive(:,:,1:1:5,:);                      
                        end
                        State=State+pieceactive.*3;
                    end
                    if(or((pairrotat==[1 3]),(pairrotat==[3 1])))
                        State=State-pieceactive.*3;
                        pieceactive=permute(pieceactive,[1 4 3 2]);
%                         pieceactive(:,:,:,5:-1:2)=pieceactive(:,:,:,2:1:5);
                        if(pairrotat==[3 1])
                            pieceactive(:,:,:,5:-1:1)=pieceactive(:,:,:,1:1:5);
                        else
                            pieceactive(:,5:-1:1,:,:)=pieceactive(:,1:1:5,:,:);                      
                        end
                        State=State+pieceactive.*3;
                    end
                    if(or((pairrotat==[1 4]),(pairrotat==[4 1])))
                        State=State-pieceactive.*3;
                        pieceactive=permute(pieceactive,[1 3 2 4]);
%                         pieceactive(:,:,:,5:-1:2)=pieceactive(:,:,:,2:1:5);
                        if(pairrotat==[4 1])
                            pieceactive(:,:,5:-1:1,:)=pieceactive(:,:,1:1:5,:);                      
                        else
                            pieceactive(:,5:-1:1,:,:)=pieceactive(:,1:1:5,:,:);
                        end
                        State=State+pieceactive.*3;
                    end
                    if(or((pairrotat==[2 3]),(pairrotat==[3 2])))
                        State=State-pieceactive.*3;
                        pieceactive=permute(pieceactive,[4 2 3 1]);
%                         pieceactive(:,:,:,5:-1:2)=pieceactive(:,:,:,2:1:5);
                        if(pairrotat==[3 2])
                            pieceactive(:,:,:,5:-1:1)=pieceactive(:,:,:,1:1:5);
                        else
                            pieceactive(5:-1:1,:,:,:)=pieceactive(1:1:5,:,:,:);                      
                        end
                        State=State+pieceactive.*3;
                    end
                    if(or((pairrotat==[2 4]),(pairrotat==[4 2])))
                        State=State-pieceactive.*3;
                        pieceactive=permute(pieceactive,[3 2 1 4]);
%                         pieceactive(:,:,:,5:-1:2)=pieceactive(:,:,:,2:1:5);
                        if(pairrotat==[4 2])
                            pieceactive(:,:,5:-1:1,:)=pieceactive(:,:,1:1:5,:);
                        else
                            pieceactive(5:-1:1,:,:,:)=pieceactive(1:1:5,:,:,:);                      
                        end
                        State=State+pieceactive.*3;
                    end
                    if(or((pairrotat==[3 4]),(pairrotat==[4 3])))
                        State=State-pieceactive.*3;
                        pieceactive=permute(pieceactive,[2 1 3 4]);
%                        pieceactive(:,5:-1:2,:,:)=pieceactive(:,2:1:5,:,:);
                        if(pairrotat==[4 3])
                            pieceactive(:,5:-1:1,:,:)=pieceactive(:,1:1:5,:,:);
                        else
                            pieceactive(5:-1:1,:,:,:)=pieceactive(1:1:5,:,:,:);
                        end
                        State=State+pieceactive.*3;
                    end
                    for i=1:5
                        for j=1:5
                            objshow3(:,:)=reshape(uint8(State(i,j,:,:).*255./5),5,5);
                            subplot(5,5,5*(i-1)+j)
                            clims=[0 255];
                            imagesc(objshow3,clims)
                            colormap(turbo)
%                            objshow=reshape(State(i,j,:,:),5,5);
%                            subplot(5,5,5*(i-1)+j)
%                            imshow(objshow,[0 5]);
                        end
                    end
                end                
            elseif (motionchar=='c')
                State=State-pieceactive.*3;
            else
                if (motionchar=='p')
                    avelescoins=circshift(pieceactive,[1 1 0 0])+circshift(pieceactive,[1 -1 0 0])+circshift(pieceactive,[-1 -1 0 0])+circshift(pieceactive,[-1 1 0 0])+...
                        circshift(pieceactive,[1 0 1 0])+circshift(pieceactive,[1 0 -1 0])+circshift(pieceactive,[-1 0 -1 0])+circshift(pieceactive,[-1 0 1 0])+...
                        circshift(pieceactive,[1 0 0 1])+circshift(pieceactive,[1 0 0 -1])+circshift(pieceactive,[-1 0 0 -1])+circshift(pieceactive,[-1 0 0 1])+...
                        circshift(pieceactive,[0 1 1 0])+circshift(pieceactive,[0 1 -1 0])+circshift(pieceactive,[0 -1 -1 0])+circshift(pieceactive,[0 -1 1 0])+...
                        circshift(pieceactive,[0 1 0 1])+circshift(pieceactive,[0 1 0 -1])+circshift(pieceactive,[0 -1 0 -1])+circshift(pieceactive,[0 -1 0 1])+...
                        circshift(pieceactive,[0 0 1 1])+circshift(pieceactive,[0 0 1 -1])+circshift(pieceactive,[0 0 -1 -1])+circshift(pieceactive,[0 0 -1 1]);
                    if (playernumber==0)
                        overlapcoins=avelescoins.*Statejoueur1;
                    else
                        overlapcoins=avelescoins.*Statejoueur2;
                    end
                    volumesinters=circshift(pieceactive,[1 0 0 0])+circshift(pieceactive,[-1 0 0 0])+circshift(pieceactive,[0 1 0 0])+circshift(pieceactive,[0 -1 0 0])+...
                        circshift(pieceactive,[0 0 1 0])+circshift(pieceactive,[0 0 -1 0])+circshift(pieceactive,[0 0 0 1])+circshift(pieceactive,[0 0 0 -1]);
                    if (playernumber==0)
                        overlapvolumesinters=volumesinters.*Statejoueur1;
                    else
                        overlapvolumesinters=volumesinters.*Statejoueur2;
                    end
                    if (max(max(max(max(State))))<=3)
                        if(max(max(max(max(overlapvolumesinters))))>=1)
                            fprintf('volumes (face4D) commun');
                            State=State-pieceactive.*3;
                        else
                            if(sum(overlapcoins,'all')>=1)
                                State=State-pieceactive.*(1+playernumber);
                                if (playernumber==0)
                                    Statejoueur1=Statejoueur1+pieceactive;
                                else
                                    Statejoueur2=Statejoueur2+pieceactive;
                                end
                                Score(playernumber+1)=Score(playernumber+1)+sum(pieceactive,'all');
                                listepieces(piecenumber,playernumber+1)=1;
                            else
                                fprintf('pas de face (arête 4D) commune');
                                State=State-pieceactive.*3;
                            end
                        end
                    else
                        fprintf('chevauchement');
                        State=State-pieceactive.*3;
                    end
                else
                    State=State-pieceactive.*3;
                end
                for i=1:5
                    for j=1:5
                            objshow3(:,:)=reshape(uint8(State(i,j,:,:).*255./5),5,5);
                            subplot(5,5,5*(i-1)+j)
                            clims=[0 255];
                            imagesc(objshow3,clims)
                            colormap(turbo)
%                            objshow=reshape(State(i,j,:,:),5,5);
%                            subplot(5,5,5*(i-1)+j)
%                            imshow(objshow,[0 5]);
                   end
                end
                fprintf('Score joueur %d: %d \n',playernumber+1,Score(playernumber+1));
                fprintf('player %d: ',playernumber+1);
                endchar(playernumber+1)=input('fin ?(oui:f, non:n)\n','s');
                if(endchar(playernumber+1)=='f')
                    Ingame(playernumber+1)=0;
                end
                if (Ingame(2-playernumber)==1)
                    playernumber=1-playernumber;
                end
            end
        end
    end
end
fprintf('Fin. player 1, Score: %d. player 2, Score: %d \n',Score(1),Score(2));
if (Score(1)==Score(2))
    fprintf('Egalité');
else
    fprintf('Le joueur %d gagne ! Bravo! \n',(Score(2)>Score(1))+1);
end
