function [Canvas] = circulo(tamanoMatriz,rellenar)
    Canvas = zeros(tamanoMatriz);
    radio = randi([2 (tamanoMatriz/2)]);
    
    centro_h = randi([radio tamanoMatriz-radio]);
    centro_k = randi([radio tamanoMatriz-radio]);

    %theta = linspace(0,2*pi);
    theta = 0:pi/4000:2*pi;
    X = centro_h + (radio).*cos(theta);
    Y = centro_k + (radio).*sin(theta);

    for i=1:length(X)
        Canvas(ceil(X(i)), ceil(Y(i))) = 1;
    end
    
    if(rellenar)
        radioAux = radio;
        while(radioAux ~= 0)
            radioAux = radioAux - 1;
            X = centro_h + (radioAux).*cos(theta);
            Y = centro_k + (radioAux).*sin(theta);
            for i=1:length(X)
                Canvas(ceil(X(i)), ceil(Y(i))) = 1;
            end
        end
    end

    fprintf('Radio:%d, centro:(%d,%d), ',radio,centro_h,centro_h)
end

