function dataNorm = myNormalise(data, mini, maxi)
    if nargin ==1 
        mini = min(data);
        maxi = max(data);
    end
    
    nbEx = size(data,1);
    maxiRep = repmat(maxi, nbEx,1);
    miniRep = repmat(mini, nbEx,1);
    
    dataNorm = (data - miniRep) ./ (maxiRep -miniRep);
end