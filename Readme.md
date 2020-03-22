Project 1 Lex Analysis
•	Project group member :Ravan SADIGLI 20160807005
•	Name of programming language:Plang
•	Grammar in BNF Form:
<program> ::=begin<stmnt_list>end;
<stmt_list>::=<stmt><stmt>|<stmt>;
<stmt>::=<var>=<expression>|<condition_stmt>|<loop_stmt>|<datatype>|<comment>|<assign_stmt>|<mthdstmt>|<funcstmt>;
<datatype>::=<integer>|<float>|<char>|<string>|<boolean>;
<boolean>::=<TRUE>|<FALSE>|<true>|<false>;
<char>::=<character>;
  
<assign_stmt>::=<leftside>=<rightside>;
<leftside>::=<datatype><identifier>|<identifier>;
<rightside>::=<expression>;
<body>={<stmt><stmt>*};
<var>::=a|b|c;
<expression>::=<var>+<var>|<var>-<var>|<var>*<var>|<var>/<var>|<conditionexpr>|<assignexpr>;
<assignexpr>::=<leftside><operator><rightside>
<condition_stmt>::=if<booleanexpr><stmt>*| if<booleanexpr>if then<stmt>*| if<booleanexpr>if then<stmt>else if <booleanexpr>*| if<booleanexpr>then<stmt>else if <booleanexpr> then<stmt>end if*;
<loop_stmt>::=<while>|<for>|<do_while>;
<while>::=while(<boolean_expr>)<body>;
<for>::=for(<assign_stmt>;<conditionexpr>;<expression>){stmt*}
<do_while>::=do<stmt> while(<boolean_expr>)<body>;
<operator>::=+|-|*|/;
<mthdstmt>::=<method><body>;
<funcstmt>::=<func><body>;
  <comment>::=!!<characters>;
<characters>::=<characters><characters>|<characters>;
<integer>::=<digit>;
  <digit>::=1|2|3|4|5|6|7|8|9;




•	Language Description
      It’s name Plang(abbreviation for programming language.<program> starts and ends.Then,there is <stmt_list> it is equal to <stmt>.<stmt> contain conditons,comment,datatype and etc.BNF described above. It's the programming language that user developer do only restricted opertion.Aim for programming languages is creating simple calculator.Writing different calculator programs depend on developers' code
    
