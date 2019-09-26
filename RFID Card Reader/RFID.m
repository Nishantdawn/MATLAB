delete(instrfind)
clear;
clc;
disp('scaning com ports...')
hw=instrhwinfo('serial');
ac=hw.AvailableSerialPorts;
[se,~] = listdlg('PromptString','Select Entry rfid port:',...
                'SelectionMode','single',...
                'ListString',ac);
            
 [sx,~] = listdlg('PromptString','Select Exit rfid port:',...
                'SelectionMode','single',...
                'ListString',ac);           
            
come=serial(cell2mat(ac(se)));
come.BytesAvailableFcnMode='byte';
come.InputBufferSize=12;


comx=serial(cell2mat(ac(sx)));
comx.BytesAvailableFcnMode='byte';
comx.InputBufferSize=12;



fopen(come);
fopen(comx);
disp('RFID Connected...')


while(1)
    [card,r]=scan_card(come,comx);
    disp(['card=',card,', rfid: ',r ]);
end