function [crd,r]=scan_card(come,comx)
    disp('Show card..')
while(1)
    flushinput(come);
    flushinput(comx);
    crde=fscanf(come);
    crdx=fscanf(comx);
    if((length(crde)==12)||(length(crdx)==12));
    disp('card scaned...');
    if(length(crde)==12)
    crd=crde;
    r='e';
    else 
    crd=crde;
    r='x';   
    end
    break;
    end
end
end