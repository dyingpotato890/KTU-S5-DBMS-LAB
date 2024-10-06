BEGIN
    dbms_output.put_line('Sum of Two Numbers: ' || mathPack.addNum(25, 15));
    dbms_output.put_line('Difference of Two Numbers: ' || mathPack.subtractNum(25, 15));
    dbms_output.put_line('Product of Two Numbers: ' || mathPack.multiplyNum(25, 15));
    dbms_output.put_line('Quotient of Two Numbers: ' || mathPack.divideNum(25, 5));
    dbms_output.put_line('Square of a Number: ' || mathPack.square(25));
END;
/