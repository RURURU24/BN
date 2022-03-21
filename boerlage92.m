function boerlage92 = mk_boerlage92()
N = 23;
dag = zeros(N,N);
% node
CV = 1; HT = 2; SW = 3; TW = 4; TC = 5; CD = 6; TR = 7; TF = 8;  
TD = 9; TA = 10; TM = 11; CP = 12; GT = 13; MR = 14; MT = 15; MD = 16;
MM = 17; PA = 18; PC = 19; FW = 20; DT = 21; VU = 22; HM = 23;
% edge
dag(CV,CD) = 1;
dag(HT,[SW CP FW]) = 1;
dag(SW,[TW CP]) = 1;
dag(TW,[TC TA TD TF TR]) = 1;
dag(TC,[CD TA]) = 1;
dag(TR,[TF MR]) = 1;
dag(TF,[TD MT]) = 1;
dag(TD,[TA MM]) = 1;
dag(TA,TM) = 1;
dag(TM,HM) = 1;
dag(CP,GT) = 1;
dag(GT,MR) = 1;
dag(MR,MT) = 1;
dag(MT,MD) = 1;
dag(MD,MM) = 1;
dag(MM,[PA FW]) = 1;
dag(PA,PC) = 1;
dag(PC,[HM VU FW]) = 1;
dag(FW,DT) = 1;
dag(DT,[HM VU]) = 1;
dag(VU,HM) = 1;
% 
discrete_nodes = 1:N;                                                      
Node_sizes = 2*ones(1,N);                                                  
boerlage92 = mk_bnet(dag,Node_sizes,discrete_nodes);                       
% 
boerlage92.CPD{CV} = tabular_CPD(boerlage92,CV,[0.01 0.99]);                               
boerlage92.CPD{HT} = tabular_CPD(boerlage92,HT,[0.7 0.3]);                       
boerlage92.CPD{SW} = tabular_CPD(boerlage92,SW,[0.7 0.6 0.3 0.4]);      
boerlage92.CPD{TW} = tabular_CPD(boerlage92,TW,[0.7 0.3 0.3 0.7]);    
boerlage92.CPD{TC} = tabular_CPD(boerlage92,TC,[0.3 0.1 0.7 0.9]);   
boerlage92.CPD{CD} = tabular_CPD(boerlage92,CD,[0.95 0.9 0.9 0.05 0.05 0.1 0.1 0.95]);   
boerlage92.CPD{TR} = tabular_CPD(boerlage92,TR,[0.1 0.05 0.9 0.95]);   
boerlage92.CPD{TF} = tabular_CPD(boerlage92,TF,[0.6 0.15 0.2 0.05 0.4 0.85 0.8 0.95]);  
boerlage92.CPD{TD} = tabular_CPD(boerlage92,TD,[0.8 0.5 0.1 0.02 0.2 0.5 0.9 0.98]); 
boerlage92.CPD{TA} = tabular_CPD(boerlage92,TA,[0.8 0.3 0.802 0.302 0.81 0.31 0.812 0.312 0.2 0.7 0.198 0.698 0.19 0.69 0.188 0.688]); 
boerlage92.CPD{TM} = tabular_CPD(boerlage92,TM,[0.3 0.05 0.7 0.95]); 
boerlage92.CPD{CP} = tabular_CPD(boerlage92,CP,[0.8 0.7 0.7 0.2 0.2 0.3 0.3 0.8]); 
boerlage92.CPD{GT} = tabular_CPD(boerlage92,GT,[0.1 0.002 0.9 0.998]); 
boerlage92.CPD{MR} = tabular_CPD(boerlage92,MR,[0.71 0.7 0.31 0.3 0.29 0.3 0.69 0.7]); 
boerlage92.CPD{MT} = tabular_CPD(boerlage92,MT,[0.8 0.1 0.5 0.02 0.2 0.9 0.5 0.98]); 
boerlage92.CPD{MD} = tabular_CPD(boerlage92,MD,[0.7 0.5 0.3 0.5]); 
boerlage92.CPD{MM} = tabular_CPD(boerlage92,MM,[0.5 0.3 0 0 0.5 0.7 1 1]); 
boerlage92.CPD{PA} = tabular_CPD(boerlage92,PA,[0.7 0.4 0.3 0.6]); 
boerlage92.CPD{PC} = tabular_CPD(boerlage92,PC,[0.9 0 0.1 1]); 
boerlage92.CPD{FW} = tabular_CPD(boerlage92,FW,[0.52 0.5 0.42 0.4 0.15 0.15 0.12 0.1 0.48 0.5 0.58 0.6 0.85 0.85 0.88 0.9]); 
boerlage92.CPD{DT} = tabular_CPD(boerlage92,DT,[0.8 0.2 0.2 0.8]); 
boerlage92.CPD{VU} = tabular_CPD(boerlage92,VU,[0.8 0.5 0.82 0.51 0.2 0.5 0.18 0.49]); 
boerlage92.CPD{HM} = tabular_CPD(boerlage92,HM,[0.12 0.1 0.31 0.3 0.13 0.11 0.33 0.31 0.11 0.09 0.31 0.29 0.12 0.1 0.32 0.3...
                                                0.88 0.9 0.69 0.7 0.87 0.89 0.67 0.69 0.89 0.91 0.69 0.71 0.88 0.9 0.68 0.7]); 