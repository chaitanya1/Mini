sorted_data = load('leaf.csv');
k=1;    
for j=1:170
        for i=1:16
        p1(i)=sorted_data(j,i);
        p2(i)=sorted_data(j+170,i);
        end
        c1=[p2(1) p2(2) p2(3) p2(4) p2(5) p2(6) p2(7) p2(8) p1(9) p1(10) p1(11) p1(12) p1(13) p1(14) p1(15) p1(16) ];
        c2=[p1(1) p1(2) p1(3) p1(4) p1(5) p1(6) p1(7) p1(8) p2(9) p2(10) p2(11) p2(12) p2(13) p2(14) p2(15) p2(16) ];
        for i=1:16
        crossover_data(k,i)=c1(i);
        crossover_data(k+1,i)=c2(i);
        end
        k=k+2;
end
    
for i=1:16
    for j=1:340
        mutation_data(j, i)=crossover_data(j, i);
    end
end

for j=1:340
    mutation_data(j,1)=crossover_data(j,15);
    mutation_data(j,15)=crossover_data(j,1);
    mutation_data(j,3)=crossover_data(j,12);
    mutation_data(j,12)=crossover_data(j,3);
    mutation_data(j,5)=crossover_data(j,10);
    mutation_data(j,10)=crossover_data(j,5);
    mutation_data(j,8)=crossover_data(j,16);
    mutation_data(j,16)=crossover_data(j,8);
    mutation_data(j,9)=crossover_data(j,2);
    mutation_data(j,2)=crossover_data(j,9);
end



        

   
    