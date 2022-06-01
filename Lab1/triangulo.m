function [Canvas] = triangulo(tamanoMatriz,rellenar)

    Canvas = zeros(tamanoMatriz);

    tamanoTriangulo = randi([4 (tamanoMatriz-1)]);

    inicio = ceil(rand(1)*(tamanoMatriz - tamanoTriangulo))+1;

    Canvas(inicio,inicio) = 1;
    
    try
        for  i=1:tamanoTriangulo-1
            Canvas(inicio+i,inicio-i:inicio+i) = 1;
        end
        
        if(~rellenar)
            Canvas(inicio+1,inicio) = 0;
            for  i=1:tamanoTriangulo-2
                Canvas(inicio+i,inicio-i+1:inicio+i-1) = 0;
            end
        end
    catch exception
        Canvas = zeros(tamanoMatriz);
        Canvas(inicio,inicio) = 1;

        for  i=1:tamanoTriangulo-1
            Canvas(inicio+i,inicio:inicio+i) = 1;
        end

        if(~rellenar)
            Canvas(inicio+2,inicio+1) = 0;
            for  i=1:tamanoTriangulo-3
                Canvas(inicio+2+i-1,inicio+1:inicio+i) = 0;
            end
        end
    end

end

