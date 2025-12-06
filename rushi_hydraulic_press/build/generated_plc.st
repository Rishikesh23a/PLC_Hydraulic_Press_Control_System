PROGRAM program0
  VAR
    Start : BOOL;
    Stop : BOOL;
    M_0 : BOOL;
    Press_A : BOOL;
    Press_B : BOOL;
    Press_C : BOOL;
    TON0 : TON;
    TON1 : TON;
    TON2 : TON;
  END_VAR

  M_0 := NOT(Stop) AND (M_0 OR Start);
  TON0(IN := M_0, PT := T#5s);
  Press_A := TON0.Q;
  TON1(IN := M_0, PT := T#7s);
  Press_B := TON1.Q;
  TON2(IN := M_0, PT := T#10s);
  Press_C := TON2.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
