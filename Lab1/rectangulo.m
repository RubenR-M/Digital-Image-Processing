function [Canvas] = rectangulo(tamanoMatriz,rellenar)

    Canvas = zeros(tamanoMatriz);
    tamanoSuperior = randi([4 tamanoMatriz]);
    tamanoLados = ceil(tamanoSuperior/2)+1;

    % Genera un punto inicial dentro de la matriz
    inicio = ceil(rand(1)*(tamanoMatriz - tamanoSuperior))+1;

    finVertical = inicio + tamanoSuperior - 1;
    finHorizontal = inicio + tamanoLados - 1;
    
    horizontal = randi([0 1]);

    if(rellenar)
        if horizontal
            Canvas(inicio:finHorizontal,inicio:finVertical) = 1;
        else
            Canvas(inicio:finVertical,inicio:finHorizontal) = 1;
        end
    else
        if horizontal
            Canvas([inicio finVertical]:finHorizontal,[inicio finVertical]) = 1;
            Canvas([inicio finHorizontal],[inicio finHorizontal]:finVertical) = 1;
        else
            Canvas([inicio finHorizontal]:finVertical,[inicio finHorizontal]) = 1;
            Canvas([inicio finVertical],[inicio finVertical]:finHorizontal) = 1;
        end
    end  
    
    if horizontal
        fprintf("Tamaño recatangulo:%dx%d",tamanoSuperior,tamanoLados)
    else
        fprintf("Tamaño recatangulo:%dx%d",tamanoLados,tamanoSuperior)
    end
    
end

