%% 1x10 vector that generates the random variable vector in range of 1 to 50
a = randi([0 50],1,10);
temp = a;  %% storing in a temparary variable 
ind = 1;  %%indicator for loop to continue.
count = 0;%%to keep a count of modifications in the matrix
count1 = 0; %%number of times loop runs
while(ind == 1)
    for i=1 : 10
      if rem(a(i),2) == 0
        a(i) = randi([0 50],1,1); %% modifing non odd integer with random number
        count = count + 1; %% increasing count due to modifictaion in vector
      end
    end
    %% checking the vector that all elements are odd integers
    for i=1 : 10
      if rem(a(i),2) == 0
          ind = 1;  %% if even integer and break
          break;
      else
          ind = 0;  %% if odd integer
      end
    end    
    count1 = count1+1;
end

%% the output for above run code
fprintf('The original vector:\n');
for i=1 : 10
    fprintf('\t %d \n',temp(i));
end
fprintf('The modified vector:\n');
for i=1 : 10
    fprintf('\t %d \n',a(i));
end
fprintf('\nThe number of times modifications are done to vector: \t %d \n',count);
fprintf('\nThe number of times while loop runs: \t %d \n',count1);