REM  ヘロンの三角形で三辺の長さと高さが連続しているものの面積を求めよ。
FOR h=1  TO  100    !高さ
   FOR a=h+1  TO h+1    !辺aの長さ
      FOR b=a+1  TO  a+1  !辺bの長さ
         FOR c=b+1 TO  b+1    !辺cの長さ
          
            LET s=(a+b+c)/2
            LET menseki=SQR(s*(s-a)*(s-b)*(s-c))
            IF  menseki=(h*b)/2 OR  menseki=(h*c)/2 OR  menseki=(h*a)/2 THEN PRINT  h;a;b;c;menseki
            IF  menseki=(h*b)/2 OR  menseki=(h*c)/2 OR  menseki=(h*a)/2 THEN   LET ans=menseki
             
             
         NEXT C
      NEXT B
   NEXT A
NEXT H
PRINT  "面積=";ans

END
