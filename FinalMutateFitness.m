mutatefit_fun=0;
for i=1:16
    for j=1:340
        mutatefit_fun=mutatefit_fun+((mutation_data(j,i))*(mutation_data(j,i)+1)*tan(mutation_data(j,i)));
    end
    mutatefitfun(i)=mutatefit_fun/340;
    mutatefit_fun=0;
end
