% Punto 4
function [] = figura(stringFigura, relleno)
    
    tamanoMatriz = 100;
    switch stringFigura
        case "cuadrado"
            Figura = cuadrado(tamanoMatriz,relleno);
        case "triangulo"
            Figura = triangulo(tamanoMatriz,relleno);
        case "circulo"
            Figura = circulo(tamanoMatriz,relleno);
        case "rectangulo"
            Figura = rectangulo(tamanoMatriz,relleno);
        case "todos"
            n=16; z=zeros(4); V=randperm(n); Figura=zeros(tamanoMatriz*4);
            for i=0:3
              cua=cuadrado(tamanoMatriz,relleno);   zs=z; zs(V(4*i+1))=1; S=kron(zs,cua);
              cir=circulo(tamanoMatriz,relleno);    zc=z; zc(V(4*i+2))=1; C=kron(zc,cir);
              tri=triangulo(tamanoMatriz,relleno);  zt=z; zt(V(4*i+3))=1; T=kron(zt,tri);
              rec=rectangulo(tamanoMatriz,relleno); zr=z; zr(V(4*i+4))=1; R=kron(zr,rec);
              Figura=Figura+S+C+T+R;
            end
        otherwise
            warning('Entrada no valida')
    end
    figure
    imshow(Figura)
end