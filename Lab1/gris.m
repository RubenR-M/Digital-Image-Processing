function [J] = gris(N) % punto 3
    figure
    J = zeros(256,256);
    for r = 1:256   
        for c = 1:256
            J(r, c) = ceil((c - 1)*N/256);
        end
    end
    imshow(J,[])
    
    figure
    %I = zeros(256,256);
    %for r = 1:256   
    %    for c = 1:256
    %        I(r, c) = ceil((r - 1)*N/256);
    %    end
    %end
    imshow(transpose(J),[])
end
