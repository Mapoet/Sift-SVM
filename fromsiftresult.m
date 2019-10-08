function siftdes=fromsiftresult(siftpot,siftdes)
potsz=size(siftpot,1);
ad=[];
for i=1:potsz
    ang(1,1:potsz)=0;
    dis(1,1:potsz)=0;
    for j=1:potsz
        x=siftpot(j,1)-siftpot(i,1);
        y=siftpot(j,2)-siftpot(i,2);
        dis(1,j)=sqrt(x*x+y*y);
        ang(1,j)=atan2(y,x);
    end
    mang=mean(ang);
    mdis=mean(dis);
    diss(1,1:4)=0;
    for j=1:potsz
        if ang(1,j)>=mang
            diss(1,1)=diss(1,1)+1;
        end
        if ang(1,j)<mang
            diss(1,2)=diss(1,2)+1;
        end
        if dis(1,j)>=mdis
            diss(1,3)=diss(1,3)+1;
        end
        if dis(1,j)<mdis
            diss(1,4)=diss(1,4)+1;
        end
    end
    ad=[ad;diss];
end
siftdes=[siftpot(:,3:4),ad];
end