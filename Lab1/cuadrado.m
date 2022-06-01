function [Canvas] = cuadrado(tamanoMatriz,rellenar)

    Canvas = zeros(tamanoMatriz);
    tamanoCuadrado = randi([3 tamanoMatriz-1]);

    % Genera un punto inicial dentro de la matriz
    inicio = ceil(rand(1)*(tamanoMatriz - tamanoCuadrado))+1;
    fin = inicio + tamanoCuadrado-1;
    
    if(rellenar)
        Canvas(inicio:fin,inicio:fin) = 1;
    else
        % Horizontal
        Canvas([inicio fin]:fin,[inicio fin]) = 1;
        % Vertical
        Canvas([inicio fin],[inicio fin]:fin) = 1;
    end  
    
    fprintf("Tamaño Cuadrado:%d",tamanoCuadrado)
end