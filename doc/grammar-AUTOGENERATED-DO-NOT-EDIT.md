# Dart Programming Language Grammar
### Version GIT-HEAD, 2015-07-02

<a name="variableDeclaration"></a>
**variableDeclaration**: <br/>
&emsp;&emsp;[declaredIdentifier](#declaredIdentifier) (`,` [identifier](#identifier))* <br/>

<a name="declaredIdentifier"></a>
**declaredIdentifier**: <br/>
&emsp;&emsp;[metadata](#metadata) [finalConstVarOrType](#finalConstVarOrType) [identifier](#identifier) <br/>

<a name="finalConstVarOrType"></a>
**finalConstVarOrType**: <br/>
&emsp;&emsp;__final__ [type](#type)? <br/>
&emsp;&emsp;__const__ [type](#type)? <br/>
&emsp;&emsp;[varOrType](#varOrType) <br/>

<a name="varOrType"></a>
**varOrType**: <br/>
&emsp;&emsp;__var__ <br/>
&emsp;&emsp;[type](#type) <br/>

<a name="initializedVariableDeclaration"></a>
**initializedVariableDeclaration**: <br/>
&emsp;&emsp;[declaredIdentifier](#declaredIdentifier) (`=` [expression](#expression))? (`,` [initializedIdentifier](#initializedIdentifier))* <br/>

<a name="initializedIdentifier"></a>
**initializedIdentifier**: <br/>
&emsp;&emsp;[identifier](#identifier) (`=` [expression](#expression))? <br/>

<a name="initializedIdentifierList"></a>
**initializedIdentifierList**: <br/>
&emsp;&emsp;[initializedIdentifier](#initializedIdentifier) (`,` [initializedIdentifier](#initializedIdentifier))* <br/>

<a name="functionSignature"></a>
**functionSignature**: <br/>
&emsp;&emsp;[metadata](#metadata) [returnType](#returnType)? [identifier](#identifier) [formalParameterList](#formalParameterList) <br/>

<a name="returnType"></a>
**returnType**: <br/>
&emsp;&emsp;__void__ <br/>
&emsp;&emsp;[type](#type) <br/>

<a name="functionBody"></a>
**functionBody**: <br/>
&emsp;&emsp;__async__? `=>` [expression](#expression) `;` <br/>
&emsp;&emsp;(__async__ | __async__* | __sync__* )? [block](#block) <br/>

<a name="block"></a>
**block**: <br/>
&emsp;&emsp;`{` [statements](#statements) `}` <br/>

<a name="formalParameterList"></a>
**formalParameterList**: <br/>
&emsp;&emsp;`(` `)` <br/>
&emsp;&emsp;`(` [normalFormalParameters](#normalFormalParameters) ( `,` [optionalFormalParameters](#optionalFormalParameters))? `)` <br/>
&emsp;&emsp;`(` [optionalFormalParameters](#optionalFormalParameters) `)` <br/>

<a name="normalFormalParameters"></a>
**normalFormalParameters**: <br/>
&emsp;&emsp;[normalFormalParameter](#normalFormalParameter) (`,` [normalFormalParameter](#normalFormalParameter))* <br/>

<a name="optionalFormalParameters"></a>
**optionalFormalParameters**: <br/>
&emsp;&emsp;[optionalPositionalFormalParameters](#optionalPositionalFormalParameters) <br/>
&emsp;&emsp;[namedFormalParameters](#namedFormalParameters) <br/>

<a name="optionalPositionalFormalParameters"></a>
**optionalPositionalFormalParameters**: <br/>
&emsp;&emsp;`[` [defaultFormalParameter](#defaultFormalParameter) (`,` [defaultFormalParameter](#defaultFormalParameter))* `]` <br/>

<a name="namedFormalParameters"></a>
**namedFormalParameters**: <br/>
&emsp;&emsp;`{` [defaultNamedParameter](#defaultNamedParameter) (`,` [defaultNamedParameter](#defaultNamedParameter))* `}` <br/>

<a name="normalFormalParameter"></a>
**normalFormalParameter**: <br/>
&emsp;&emsp;[functionSignature](#functionSignature) <br/>
&emsp;&emsp;[fieldFormalParameter](#fieldFormalParameter) <br/>
&emsp;&emsp;[simpleFormalParameter](#simpleFormalParameter) <br/>

<a name="simpleFormalParameter"></a>
**simpleFormalParameter**: <br/>
&emsp;&emsp;[declaredIdentifier](#declaredIdentifier) <br/>
&emsp;&emsp;[metadata](#metadata) [identifier](#identifier) <br/>

<a name="fieldFormalParameter"></a>
**fieldFormalParameter**: <br/>
&emsp;&emsp;[metadata](#metadata) [finalConstVarOrType](#finalConstVarOrType)? __this__ `.` [identifier](#identifier) [formalParameterList](#formalParameterList)? <br/>

<a name="defaultFormalParameter"></a>
**defaultFormalParameter**: <br/>
&emsp;&emsp;[normalFormalParameter](#normalFormalParameter) (`=` [expression](#expression))? <br/>

<a name="defaultNamedParameter"></a>
**defaultNamedParameter**: <br/>
&emsp;&emsp;[normalFormalParameter](#normalFormalParameter) ( `:` [expression](#expression))? <br/>

<a name="classDefinition"></a>
**classDefinition**: <br/>
&emsp;&emsp;[metadata](#metadata) __abstract__? __class__ [identifier](#identifier) [typeParameters](#typeParameters)? ([superclass](#superclass) [mixins](#mixins)?)? [interfaces](#interfaces)? `{` ([metadata](#metadata) [classMemberDefinition](#classMemberDefinition))* `}` <br/>
&emsp;&emsp;[metadata](#metadata) __abstract__? __class__ [mixinApplicationClass](#mixinApplicationClass) <br/>

<a name="mixins"></a>
**mixins**: <br/>
&emsp;&emsp;__with__ [typeList](#typeList) <br/>

<a name="classMemberDefinition"></a>
**classMemberDefinition**: <br/>
&emsp;&emsp;[declaration](#declaration) `;`  <br/>
&emsp;&emsp;[methodSignature](#methodSignature) [functionBody](#functionBody) <br/>

<a name="methodSignature"></a>
**methodSignature**: <br/>
&emsp;&emsp;[constructorSignature](#constructorSignature) [initializers](#initializers)? <br/>
&emsp;&emsp;[factoryConstructorSignature](#factoryConstructorSignature) <br/>
&emsp;&emsp;__static__? [functionSignature](#functionSignature) <br/>
&emsp;&emsp;__static__? [getterSignature](#getterSignature) <br/>
&emsp;&emsp;__static__? [setterSignature](#setterSignature) <br/>
&emsp;&emsp;[operatorSignature](#operatorSignature) <br/>

<a name="declaration"></a>
**declaration**: <br/>
&emsp;&emsp;[constantConstructorSignature](#constantConstructorSignature) ([redirection](#redirection) | [initializers](#initializers))? <br/>
&emsp;&emsp;[constructorSignature](#constructorSignature) ([redirection](#redirection) | [initializers](#initializers))? <br/>
&emsp;&emsp;__external__ [constantConstructorSignature](#constantConstructorSignature) <br/>
&emsp;&emsp;__external__ [constructorSignature](#constructorSignature) <br/>
&emsp;&emsp;((__external__ __static__ ?))? [getterSignature](#getterSignature) <br/>
&emsp;&emsp;((__external__ __static__?))? [setterSignature](#setterSignature) <br/>
&emsp;&emsp;__external__? [operatorSignature](#operatorSignature) <br/>
&emsp;&emsp;((__external__ __static__?))? [functionSignature](#functionSignature) <br/>
&emsp;&emsp;__static__ (__final__ | __const__) [type](#type)? [staticFinalDeclarationList](#staticFinalDeclarationList) <br/>
&emsp;&emsp;__final__ [type](#type)? [initializedIdentifierList](#initializedIdentifierList) <br/>
&emsp;&emsp;__static__? (__var__ | [type](#type)) [initializedIdentifierList](#initializedIdentifierList) <br/>

<a name="staticFinalDeclarationList"></a>
**staticFinalDeclarationList**: <br/>
&emsp;&emsp;[staticFinalDeclaration](#staticFinalDeclaration) (`,` [staticFinalDeclaration](#staticFinalDeclaration))* <br/>

<a name="staticFinalDeclaration"></a>
**staticFinalDeclaration**: <br/>
&emsp;&emsp;[identifier](#identifier) `=` [expression](#expression) <br/>

<a name="operatorSignature"></a>
**operatorSignature**: <br/>
&emsp;&emsp;[returnType](#returnType)? __operator__ [operator](#operator) [formalParameterList](#formalParameterList) <br/>

<a name="operator"></a>
**operator**: <br/>
&emsp;&emsp;`~` <br/>
&emsp;&emsp;[binaryOperator](#binaryOperator) <br/>
&emsp;&emsp;`[` `]`  <br/>
&emsp;&emsp;`[` `]` `=` <br/>

<a name="binaryOperator"></a>
**binaryOperator**: <br/>
&emsp;&emsp;[multiplicativeOperator](#multiplicativeOperator) <br/>
&emsp;&emsp;[additiveOperator](#additiveOperator) <br/>
&emsp;&emsp;[shiftOperator](#shiftOperator) <br/>
&emsp;&emsp;[relationalOperator](#relationalOperator) <br/>
&emsp;&emsp;`==` <br/>
&emsp;&emsp;[bitwiseOperator](#bitwiseOperator) <br/>

<a name="getterSignature"></a>
**getterSignature**: <br/>
&emsp;&emsp;[returnType](#returnType)? __get__ [identifier](#identifier) <br/>

<a name="setterSignature"></a>
**setterSignature**: <br/>
&emsp;&emsp;[returnType](#returnType)? __set__ [identifier](#identifier) [formalParameterList](#formalParameterList) <br/>

<a name="constructorSignature"></a>
**constructorSignature**: <br/>
&emsp;&emsp;[identifier](#identifier) (`.` [identifier](#identifier))? [formalParameterList](#formalParameterList) <br/>

<a name="redirection"></a>
**redirection**: <br/>
&emsp;&emsp;`:` __this__ (`.` [identifier](#identifier))? [arguments](#arguments) <br/>

<a name="initializers"></a>
**initializers**: <br/>
&emsp;&emsp;`:` [superCallOrFieldInitializer](#superCallOrFieldInitializer) (`,` [superCallOrFieldInitializer](#superCallOrFieldInitializer))* <br/>

<a name="superCallOrFieldInitializer"></a>
**superCallOrFieldInitializer**: <br/>
&emsp;&emsp;__super__ [arguments](#arguments) <br/>
&emsp;&emsp;__super__ `.` [identifier](#identifier) [arguments](#arguments) <br/>
&emsp;&emsp;[fieldInitializer](#fieldInitializer) <br/>

<a name="fieldInitializer"></a>
**fieldInitializer**: <br/>
&emsp;&emsp;(__this__ `.`)? [identifier](#identifier) `=` [conditionalExpression](#conditionalExpression) [cascadeSection](#cascadeSection)* <br/>

<a name="factoryConstructorSignature"></a>
**factoryConstructorSignature**: <br/>
&emsp;&emsp;__factory__ [identifier](#identifier) (`.` [identifier](#identifier))? [formalParameterList](#formalParameterList) <br/>

<a name="redirectingFactoryConstructorSignature"></a>
**redirectingFactoryConstructorSignature**: <br/>
&emsp;&emsp;__const__? __factory__ [identifier](#identifier) (`.` [identifier](#identifier))? [formalParameterList](#formalParameterList) `=` [type](#type) (`.` [identifier](#identifier))? <br/>

<a name="constantConstructorSignature"></a>
**constantConstructorSignature**: <br/>
&emsp;&emsp;__const__ [qualified](#qualified) [formalParameterList](#formalParameterList) <br/>

<a name="superclass"></a>
**superclass**: <br/>
&emsp;&emsp;__extends__ [type](#type) <br/>

<a name="interfaces"></a>
**interfaces**: <br/>
&emsp;&emsp;__implements__ [typeList](#typeList) <br/>

<a name="mixinApplicationClass"></a>
**mixinApplicationClass**: <br/>
&emsp;&emsp;[identifier](#identifier) [typeParameters](#typeParameters)? `=` [mixinApplication](#mixinApplication) `;` . <br/>

<a name="mixinApplication"></a>
**mixinApplication**: <br/>
&emsp;&emsp;[type](#type) [mixins](#mixins) [interfaces](#interfaces)? <br/>

<a name="enumType"></a>
**enumType**: <br/>
&emsp;&emsp;[metadata](#metadata) __enum__ [id](#id) `{` [id](#id) [`,` [id](#id)]* [`,`] `}` <br/>

<a name="typeParameter"></a>
**typeParameter**: <br/>
&emsp;&emsp;[metadata](#metadata) [identifier](#identifier) (__extends__ [type](#type))? <br/>

<a name="typeParameters"></a>
**typeParameters**: <br/>
&emsp;&emsp;`<` [typeParameter](#typeParameter) (`,` [typeParameter](#typeParameter))* `>` <br/>

<a name="metadata"></a>
**metadata**: <br/>
&emsp;&emsp;(`@` [qualified](#qualified) (`.` [identifier](#identifier))? ([arguments](#arguments))?)* <br/>

<a name="expression"></a>
**expression**: <br/>
&emsp;&emsp;[assignableExpression](#assignableExpression) [assignmentOperator](#assignmentOperator) [expression](#expression) <br/>
&emsp;&emsp;[conditionalExpression](#conditionalExpression) [cascadeSection](#cascadeSection)* <br/>
&emsp;&emsp;[throwExpression](#throwExpression) <br/>

<a name="expressionWithoutCascade"></a>
**expressionWithoutCascade**: <br/>
&emsp;&emsp;[assignableExpression](#assignableExpression) [assignmentOperator](#assignmentOperator) [expressionWithoutCascade](#expressionWithoutCascade) <br/>
&emsp;&emsp;[conditionalExpression](#conditionalExpression) <br/>
&emsp;&emsp;[throwExpressionWithoutCascade](#throwExpressionWithoutCascade) <br/>

<a name="expressionList"></a>
**expressionList**: <br/>
&emsp;&emsp;[expression](#expression) (`,` [expression](#expression))* <br/>

<a name="primary"></a>
**primary**: <br/>
&emsp;&emsp;[thisExpression](#thisExpression) <br/>
&emsp;&emsp;__super__ [unconditionalAssignableSelector](#unconditionalAssignableSelector) <br/>
&emsp;&emsp;[functionExpression](#functionExpression) <br/>
&emsp;&emsp;[literal](#literal) <br/>
&emsp;&emsp;[identifier](#identifier) <br/>
&emsp;&emsp;[newExpression](#newExpression) <br/>
&emsp;&emsp;__new__ [type](#type) `#` (`.` [identifier](#identifier))? <br/>
&emsp;&emsp;[constObjectExpression](#constObjectExpression) <br/>
&emsp;&emsp;`(` [expression](#expression) `)` <br/>

<a name="literal"></a>
**literal**: <br/>
&emsp;&emsp;[nullLiteral](#nullLiteral) <br/>
&emsp;&emsp;[booleanLiteral](#booleanLiteral) <br/>
&emsp;&emsp;[numericLiteral](#numericLiteral) <br/>
&emsp;&emsp;[stringLiteral](#stringLiteral) <br/>
&emsp;&emsp;[symbolLiteral](#symbolLiteral) <br/>
&emsp;&emsp;[mapLiteral](#mapLiteral) <br/>
&emsp;&emsp;[listLiteral](#listLiteral) <br/>

<a name="nullLiteral"></a>
**nullLiteral**: <br/>
&emsp;&emsp;__null__ <br/>

<a name="numericLiteral"></a>
**numericLiteral**: <br/>
&emsp;&emsp;[NUMBER](#NUMBER) <br/>
&emsp;&emsp;[HEX_NUMBER](#HEX_NUMBER) <br/>

<a name="NUMBER"></a>
**NUMBER**: <br/>
&emsp;&emsp;[DIGIT](#DIGIT)+ (`.` [DIGIT](#DIGIT)+)? [EXPONENT](#EXPONENT)? <br/>
&emsp;&emsp;`.` [DIGIT](#DIGIT)+ [EXPONENT](#EXPONENT)? <br/>

<a name="EXPONENT"></a>
**EXPONENT**: <br/>
&emsp;&emsp;(`e` | `E`) (`+` | `-`)? [DIGIT](#DIGIT)+ <br/>

<a name="HEX_NUMBER"></a>
**HEX_NUMBER**: <br/>
&emsp;&emsp;`0x` [HEX_DIGIT](#HEX_DIGIT)+ <br/>
&emsp;&emsp;`0X` [HEX_DIGIT](#HEX_DIGIT)+ <br/>

<a name="HEX_DIGIT"></a>
**HEX_DIGIT**: <br/>
&emsp;&emsp;`a`..`f` <br/>
&emsp;&emsp;`A`..`F` <br/>
&emsp;&emsp;[DIGIT](#DIGIT) <br/>

<a name="booleanLiteral"></a>
**booleanLiteral**: <br/>
&emsp;&emsp;__true__ <br/>
&emsp;&emsp;__false__ <br/>

<a name="stringLiteral"></a>
**stringLiteral**: <br/>
&emsp;&emsp;([multilineString](#multilineString) | [singleLineString](#singleLineString))+ <br/>

<a name="singleLineString"></a>
**singleLineString**: <br/>
&emsp;&emsp;`"` [stringContentDQ](#stringContentDQ)* `"` <br/>
&emsp;&emsp;`'` [stringContentSQ](#stringContentSQ)* `'` <br/>
&emsp;&emsp;`r` `'` (~( `'` | [NEWLINE](#NEWLINE) ))* `'` <br/>
&emsp;&emsp;`r` `"` (~( `"` | [NEWLINE](#NEWLINE) ))* `"` <br/>

<a name="multilineString"></a>
**multilineString**: <br/>
&emsp;&emsp;`"""` [stringContentTDQ](#stringContentTDQ)* `"""` <br/>
&emsp;&emsp;`'''` [stringContentTSQ](#stringContentTSQ)* `'''` <br/>
&emsp;&emsp;`r` `"""` (~ `"""`)* `"""` <br/>
&emsp;&emsp;`r` `'''` (~ `'''`)* `'''` <br/>

<a name="ESCAPE_SEQUENCE"></a>
**ESCAPE_SEQUENCE**: <br/>
&emsp;&emsp;`\n` <br/>
&emsp;&emsp;`\r` <br/>
&emsp;&emsp;`\f` <br/>
&emsp;&emsp;`\b` <br/>
&emsp;&emsp;`\t` <br/>
&emsp;&emsp;`\v` <br/>
&emsp;&emsp;`\x` [HEX_DIGIT](#HEX_DIGIT) [HEX_DIGIT](#HEX_DIGIT) <br/>
&emsp;&emsp;`\u` [HEX_DIGIT](#HEX_DIGIT) [HEX_DIGIT](#HEX_DIGIT) [HEX_DIGIT](#HEX_DIGIT) [HEX_DIGIT](#HEX_DIGIT) <br/>
&emsp;&emsp;`\u{` [HEX_DIGIT_SEQUENCE](#HEX_DIGIT_SEQUENCE) `}` <br/>

<a name="HEX_DIGIT_SEQUENCE"></a>
**HEX_DIGIT_SEQUENCE**: <br/>
&emsp;&emsp;[HEX_DIGIT](#HEX_DIGIT) [HEX_DIGIT](#HEX_DIGIT)? [HEX_DIGIT](#HEX_DIGIT)? [HEX_DIGIT](#HEX_DIGIT)? [HEX_DIGIT](#HEX_DIGIT)? [HEX_DIGIT](#HEX_DIGIT)? <br/>

<a name="stringContentDQ"></a>
**stringContentDQ**: <br/>
&emsp;&emsp;~( `\` | `"` | `$` | [NEWLINE](#NEWLINE) ) <br/>
&emsp;&emsp;`\` ~( [NEWLINE](#NEWLINE) ) <br/>
&emsp;&emsp;[stringInterpolation](#stringInterpolation) <br/>

<a name="stringContentSQ"></a>
**stringContentSQ**: <br/>
&emsp;&emsp;~( `\` | `'` | `$` | [NEWLINE](#NEWLINE) ) <br/>
&emsp;&emsp;`\` ~( [NEWLINE](#NEWLINE) ) <br/>
&emsp;&emsp;[stringInterpolation](#stringInterpolation) <br/>

<a name="stringContentTDQ"></a>
**stringContentTDQ**: <br/>
&emsp;&emsp;~( `\` | `"""` | `$`) <br/>
&emsp;&emsp;[stringInterpolation](#stringInterpolation) <br/>

<a name="stringContentTSQ"></a>
**stringContentTSQ**: <br/>
&emsp;&emsp;~( `\` | `'''` | `$`) <br/>
&emsp;&emsp;[stringInterpolation](#stringInterpolation) <br/>

<a name="NEWLINE"></a>
**NEWLINE**: <br/>
&emsp;&emsp;\n <br/>
&emsp;&emsp;\r <br/>

<a name="stringInterpolation"></a>
**stringInterpolation**: <br/>
&emsp;&emsp;`$` [IDENTIFIER_NO_DOLLAR](#IDENTIFIER_NO_DOLLAR) <br/>
&emsp;&emsp;`$` `{` [expression](#expression) `}` <br/>

<a name="symbolLiteral"></a>
**symbolLiteral**: <br/>
&emsp;&emsp;`#` ([operator](#operator) | ([identifier](#identifier) (`.` [identifier](#identifier))* )) . <br/>

<a name="listLiteral"></a>
**listLiteral**: <br/>
&emsp;&emsp;__const__? [typeArguments](#typeArguments)? `[` ([expressionList](#expressionList) `,`?)? `]` <br/>

<a name="mapLiteral"></a>
**mapLiteral**: <br/>
&emsp;&emsp;__const__? [typeArguments](#typeArguments)? `{` ([mapLiteralEntry](#mapLiteralEntry) (`,` [mapLiteralEntry](#mapLiteralEntry))* `,`?)? `}` <br/>

<a name="mapLiteralEntry"></a>
**mapLiteralEntry**: <br/>
&emsp;&emsp;[expression](#expression) `:` [expression](#expression) <br/>

<a name="throwExpression"></a>
**throwExpression**: <br/>
&emsp;&emsp;__throw__ [expression](#expression) <br/>

<a name="throwExpressionWithoutCascade"></a>
**throwExpressionWithoutCascade**: <br/>
&emsp;&emsp;__throw__ [expressionWithoutCascade](#expressionWithoutCascade) <br/>

<a name="functionExpression"></a>
**functionExpression**: <br/>
&emsp;&emsp;[formalParameterList](#formalParameterList) [functionBody](#functionBody) <br/>

<a name="thisExpression"></a>
**thisExpression**: <br/>
&emsp;&emsp;__this__ <br/>

<a name="newExpression"></a>
**newExpression**: <br/>
&emsp;&emsp;__new__ [type](#type) (`.` [identifier](#identifier))? [arguments](#arguments) <br/>

<a name="constObjectExpression"></a>
**constObjectExpression**: <br/>
&emsp;&emsp;__const__ [type](#type) (`.` [identifier](#identifier))? [arguments](#arguments) <br/>

<a name="arguments"></a>
**arguments**: <br/>
&emsp;&emsp;`(` [argumentList](#argumentList)? `)` <br/>

<a name="argumentList"></a>
**argumentList**: <br/>
&emsp;&emsp;[namedArgument](#namedArgument) (`,` [namedArgument](#namedArgument))* <br/>
&emsp;&emsp;[expressionList](#expressionList) (`,` [namedArgument](#namedArgument))* <br/>

<a name="namedArgument"></a>
**namedArgument**: <br/>
&emsp;&emsp;[label](#label) [expression](#expression) <br/>

<a name="cascadeSection"></a>
**cascadeSection**: <br/>
&emsp;&emsp;`..` ([cascadeSelector](#cascadeSelector) [arguments](#arguments)* ) ([assignableSelector](#assignableSelector) [arguments](#arguments)* )* ([assignmentOperator](#assignmentOperator) [expressionWithoutCascade](#expressionWithoutCascade))? <br/>

<a name="cascadeSelector"></a>
**cascadeSelector**: <br/>
&emsp;&emsp;`[` [expression](#expression) `]` <br/>
&emsp;&emsp;[identifier](#identifier) <br/>

<a name="assignmentOperator"></a>
**assignmentOperator**: <br/>
&emsp;&emsp;`=`  <br/>
&emsp;&emsp;[compoundAssignmentOperator](#compoundAssignmentOperator) <br/>

<a name="compoundAssignmentOperator"></a>
**compoundAssignmentOperator**: <br/>
&emsp;&emsp;`*=` <br/>
&emsp;&emsp;`/=` <br/>
&emsp;&emsp;`~/=` <br/>
&emsp;&emsp;`\%=` <br/>
&emsp;&emsp;`+=` <br/>
&emsp;&emsp;`-=` <br/>
&emsp;&emsp;`< <=` <br/>
&emsp;&emsp;`> >=` <br/>
&emsp;&emsp;`&=` <br/>
&emsp;&emsp;`^=` <br/>
&emsp;&emsp;`|=` <br/>
&emsp;&emsp;`??=` <br/>

<a name="conditionalExpression"></a>
**conditionalExpression**: <br/>
&emsp;&emsp;[ifNullExpression](#ifNullExpression) (`?` [expressionWithoutCascade](#expressionWithoutCascade) `:` [expressionWithoutCascade](#expressionWithoutCascade))? <br/>

<a name="ifNullExpression"></a>
**ifNullExpression**: <br/>
&emsp;&emsp;[logicalOrExpression](#logicalOrExpression) (`??` [logicalOrExpression](#logicalOrExpression))* <br/>

<a name="logicalOrExpression"></a>
**logicalOrExpression**: <br/>
&emsp;&emsp;[logicalAndExpression](#logicalAndExpression) (`||` [logicalAndExpression](#logicalAndExpression))* <br/>

<a name="logicalAndExpression"></a>
**logicalAndExpression**: <br/>
&emsp;&emsp;[equalityExpression](#equalityExpression) (`&&` [equalityExpression](#equalityExpression))* <br/>

<a name="equalityExpression"></a>
**equalityExpression**: <br/>
&emsp;&emsp;[relationalExpression](#relationalExpression) ([equalityOperator](#equalityOperator) [relationalExpression](#relationalExpression))? <br/>
&emsp;&emsp;__super__ [equalityOperator](#equalityOperator) [relationalExpression](#relationalExpression) <br/>

<a name="equalityOperator"></a>
**equalityOperator**: <br/>
&emsp;&emsp;`==` <br/>
&emsp;&emsp;`!=` <br/>

<a name="relationalExpression"></a>
**relationalExpression**: <br/>
&emsp;&emsp;[bitwiseOrExpression](#bitwiseOrExpression) ([typeTest](#typeTest) | [typeCast](#typeCast) | [relationalOperator](#relationalOperator) [bitwiseOrExpression](#bitwiseOrExpression))? <br/>
&emsp;&emsp;__super__ [relationalOperator](#relationalOperator) [bitwiseOrExpression](#bitwiseOrExpression) <br/>

<a name="relationalOperator"></a>
**relationalOperator**: <br/>
&emsp;&emsp;`>=` <br/>
&emsp;&emsp;`>` <br/>
&emsp;&emsp;`<=` <br/>
&emsp;&emsp;`<` <br/>

<a name="bitwiseOrExpression"></a>
**bitwiseOrExpression**: <br/>
&emsp;&emsp;[bitwiseXorExpression](#bitwiseXorExpression) (`|` [bitwiseXorExpression](#bitwiseXorExpression))* <br/>
&emsp;&emsp;__super__ (`|` [bitwiseXorExpression](#bitwiseXorExpression))+ <br/>

<a name="bitwiseXorExpression"></a>
**bitwiseXorExpression**: <br/>
&emsp;&emsp;[bitwiseAndExpression](#bitwiseAndExpression) (`^` [bitwiseAndExpression](#bitwiseAndExpression))* <br/>
&emsp;&emsp;__super__ (`^` [bitwiseAndExpression](#bitwiseAndExpression))+ <br/>

<a name="bitwiseAndExpression"></a>
**bitwiseAndExpression**: <br/>
&emsp;&emsp;[shiftExpression](#shiftExpression) (`&` [shiftExpression](#shiftExpression))* <br/>
&emsp;&emsp;__super__ (`&` [shiftExpression](#shiftExpression))+ <br/>

<a name="bitwiseOperator"></a>
**bitwiseOperator**: <br/>
&emsp;&emsp;`&` <br/>
&emsp;&emsp;`^` <br/>
&emsp;&emsp;`|` <br/>

<a name="shiftExpression"></a>
**shiftExpression**: <br/>
&emsp;&emsp;[additiveExpression](#additiveExpression) ([shiftOperator](#shiftOperator) [additiveExpression](#additiveExpression))* <br/>
&emsp;&emsp;__super__ ([shiftOperator](#shiftOperator) [additiveExpression](#additiveExpression))+ <br/>

<a name="shiftOperator"></a>
**shiftOperator**: <br/>
&emsp;&emsp;`<<` <br/>
&emsp;&emsp;`> >` <br/>

<a name="additiveExpression"></a>
**additiveExpression**: <br/>
&emsp;&emsp;[multiplicativeExpression](#multiplicativeExpression) ([additiveOperator](#additiveOperator) [multiplicativeExpression](#multiplicativeExpression))* <br/>
&emsp;&emsp;__super__ ([additiveOperator](#additiveOperator) [multiplicativeExpression](#multiplicativeExpression))+ <br/>

<a name="additiveOperator"></a>
**additiveOperator**: <br/>
&emsp;&emsp;`+` <br/>
&emsp;&emsp;`-` <br/>

<a name="multiplicativeExpression"></a>
**multiplicativeExpression**: <br/>
&emsp;&emsp;[unaryExpression](#unaryExpression) ([multiplicativeOperator](#multiplicativeOperator) [unaryExpression](#unaryExpression))* <br/>
&emsp;&emsp;__super__ ([multiplicativeOperator](#multiplicativeOperator) [unaryExpression](#unaryExpression))+ <br/>

<a name="multiplicativeOperator"></a>
**multiplicativeOperator**: <br/>
&emsp;&emsp;`*` <br/>
&emsp;&emsp;`/` <br/>
&emsp;&emsp;`\%` <br/>
&emsp;&emsp;`~/` <br/>

<a name="unaryExpression"></a>
**unaryExpression**: <br/>
&emsp;&emsp;[prefixOperator](#prefixOperator) [unaryExpression](#unaryExpression) <br/>
&emsp;&emsp;[awaitExpression](#awaitExpression) <br/>
&emsp;&emsp;[postfixExpression](#postfixExpression) <br/>
&emsp;&emsp;([minusOperator](#minusOperator) | [tildeOperator](#tildeOperator)) __super__ <br/>
&emsp;&emsp;[incrementOperator](#incrementOperator) [assignableExpression](#assignableExpression) <br/>

<a name="prefixOperator"></a>
**prefixOperator**: <br/>
&emsp;&emsp;[minusOperator](#minusOperator) <br/>
&emsp;&emsp;[negationOperator](#negationOperator) <br/>
&emsp;&emsp;[tildeOperator](#tildeOperator) <br/>

<a name="minusOperator"></a>
**minusOperator**: <br/>
&emsp;&emsp;`-`; . <br/>

<a name="negationOperator"></a>
**negationOperator**: <br/>
&emsp;&emsp;`!`  <br/>

<a name="tildeOperator"></a>
**tildeOperator**: <br/>
&emsp;&emsp;`~` <br/>

<a name="awaitExpression"></a>
**awaitExpression**: <br/>
&emsp;&emsp;__await__ [unaryExpression](#unaryExpression) <br/>

<a name="postfixExpression"></a>
**postfixExpression**: <br/>
&emsp;&emsp;[assignableExpression](#assignableExpression) [postfixOperator](#postfixOperator) <br/>
&emsp;&emsp;[primary](#primary) ([selector](#selector)* | ( `#` ( ([identifier](#identifier) `=`?) | [operator](#operator)))) <br/>

<a name="postfixOperator"></a>
**postfixOperator**: <br/>
&emsp;&emsp;[incrementOperator](#incrementOperator) <br/>

<a name="selector"></a>
**selector**: <br/>
&emsp;&emsp;[assignableSelector](#assignableSelector) <br/>
&emsp;&emsp;[arguments](#arguments) <br/>

<a name="incrementOperator"></a>
**incrementOperator**: <br/>
&emsp;&emsp;`++` <br/>
&emsp;&emsp;`--` <br/>

<a name="assignableExpression"></a>
**assignableExpression**: <br/>
&emsp;&emsp;[primary](#primary) ([arguments](#arguments)* [assignableSelector](#assignableSelector))+ <br/>
&emsp;&emsp;__super__ [unconditionalAssignableSelector](#unconditionalAssignableSelector) <br/>
&emsp;&emsp;[identifier](#identifier) <br/>

<a name="unconditionalAssignableSelector"></a>
**unconditionalAssignableSelector**: <br/>
&emsp;&emsp;`[` [expression](#expression) `]` <br/>
&emsp;&emsp;`.` [identifier](#identifier) <br/>

<a name="assignableSelector"></a>
**assignableSelector**: <br/>
&emsp;&emsp;[unconditionalAssignableSelector](#unconditionalAssignableSelector) <br/>
&emsp;&emsp;`?.` [identifier](#identifier) <br/>

<a name="identifier"></a>
**identifier**: <br/>
&emsp;&emsp;[IDENTIFIER](#IDENTIFIER) <br/>

<a name="IDENTIFIER_NO_DOLLAR"></a>
**IDENTIFIER_NO_DOLLAR**: <br/>
&emsp;&emsp;[IDENTIFIER_START_NO_DOLLAR](#IDENTIFIER_START_NO_DOLLAR) [IDENTIFIER_PART_NO_DOLLAR](#IDENTIFIER_PART_NO_DOLLAR)* <br/>

<a name="IDENTIFIER"></a>
**IDENTIFIER**: <br/>
&emsp;&emsp;[IDENTIFIER_START](#IDENTIFIER_START) [IDENTIFIER_PART](#IDENTIFIER_PART)* <br/>

<a name="BUILT_IN_IDENTIFIER"></a>
**BUILT_IN_IDENTIFIER**: <br/>
&emsp;&emsp;__abstract__ <br/>
&emsp;&emsp;__as__ <br/>
&emsp;&emsp;__deferred__ <br/>
&emsp;&emsp;__dynamic__ <br/>
&emsp;&emsp;__export__ <br/>
&emsp;&emsp;__external__ <br/>
&emsp;&emsp;__factory__ <br/>
&emsp;&emsp;__get__ <br/>
&emsp;&emsp;__implements__ <br/>
&emsp;&emsp;__import__ <br/>
&emsp;&emsp;__library__ <br/>
&emsp;&emsp;__operator__ <br/>
&emsp;&emsp;__part__ <br/>
&emsp;&emsp;__set__ <br/>
&emsp;&emsp;__static__ <br/>
&emsp;&emsp;__typedef__ <br/>

<a name="IDENTIFIER_START"></a>
**IDENTIFIER_START**: <br/>
&emsp;&emsp;[IDENTIFIER_START_NO_DOLLAR](#IDENTIFIER_START_NO_DOLLAR) <br/>
&emsp;&emsp;`$` <br/>

<a name="IDENTIFIER_START_NO_DOLLAR"></a>
**IDENTIFIER_START_NO_DOLLAR**: <br/>
&emsp;&emsp;[LETTER](#LETTER) <br/>
&emsp;&emsp;`_` <br/>

<a name="IDENTIFIER_PART_NO_DOLLAR"></a>
**IDENTIFIER_PART_NO_DOLLAR**: <br/>
&emsp;&emsp;[IDENTIFIER_START_NO_DOLLAR](#IDENTIFIER_START_NO_DOLLAR) <br/>
&emsp;&emsp;[DIGIT](#DIGIT) <br/>

<a name="IDENTIFIER_PART"></a>
**IDENTIFIER_PART**: <br/>
&emsp;&emsp;[IDENTIFIER_START](#IDENTIFIER_START) <br/>
&emsp;&emsp;[DIGIT](#DIGIT) <br/>

<a name="qualified"></a>
**qualified**: <br/>
&emsp;&emsp;[identifier](#identifier) (`.` [identifier](#identifier))? <br/>

<a name="typeTest"></a>
**typeTest**: <br/>
&emsp;&emsp;[isOperator](#isOperator) [type](#type) <br/>

<a name="isOperator"></a>
**isOperator**: <br/>
&emsp;&emsp;__is__ `!`? <br/>

<a name="typeCast"></a>
**typeCast**: <br/>
&emsp;&emsp;[asOperator](#asOperator) [type](#type) <br/>

<a name="asOperator"></a>
**asOperator**: <br/>
&emsp;&emsp;__as__ <br/>

<a name="statements"></a>
**statements**: <br/>
&emsp;&emsp;[statement](#statement)* <br/>

<a name="statement"></a>
**statement**: <br/>
&emsp;&emsp;[label](#label)* [nonLabelledStatement](#nonLabelledStatement) <br/>

<a name="nonLabelledStatement"></a>
**nonLabelledStatement**: <br/>
&emsp;&emsp;[block](#block) <br/>
&emsp;&emsp;[localVariableDeclaration](#localVariableDeclaration) <br/>
&emsp;&emsp;[forStatement](#forStatement) <br/>
&emsp;&emsp;[whileStatement](#whileStatement) <br/>
&emsp;&emsp;[doStatement](#doStatement) <br/>
&emsp;&emsp;[switchStatement](#switchStatement) <br/>
&emsp;&emsp;[ifStatement](#ifStatement) <br/>
&emsp;&emsp;[rethrowStatement](#rethrowStatement) <br/>
&emsp;&emsp;[tryStatement](#tryStatement) <br/>
&emsp;&emsp;[breakStatement](#breakStatement) <br/>
&emsp;&emsp;[continueStatement](#continueStatement) <br/>
&emsp;&emsp;[returnStatement](#returnStatement) <br/>
&emsp;&emsp;[yieldStatement](#yieldStatement) <br/>
&emsp;&emsp;[yieldEachStatement](#yieldEachStatement) <br/>
&emsp;&emsp;[expressionStatement](#expressionStatement) <br/>
&emsp;&emsp;[assertStatement](#assertStatement) <br/>
&emsp;&emsp;[localFunctionDeclaration](#localFunctionDeclaration) <br/>

<a name="expressionStatement"></a>
**expressionStatement**: <br/>
&emsp;&emsp;[expression](#expression)? `;` <br/>

<a name="localVariableDeclaration"></a>
**localVariableDeclaration**: <br/>
&emsp;&emsp;[initializedVariableDeclaration](#initializedVariableDeclaration) `;` <br/>

<a name="localFunctionDeclaration"></a>
**localFunctionDeclaration**: <br/>
&emsp;&emsp;[functionSignature](#functionSignature) [functionBody](#functionBody) <br/>

<a name="ifStatement"></a>
**ifStatement**: <br/>
&emsp;&emsp;__if__ `(` [expression](#expression) `)` [statement](#statement) ( __else__ [statement](#statement))? <br/>

<a name="forStatement"></a>
**forStatement**: <br/>
&emsp;&emsp;__await__? __for__ `(` [forLoopParts](#forLoopParts) `)` [statement](#statement) <br/>

<a name="forLoopParts"></a>
**forLoopParts**: <br/>
&emsp;&emsp;[forInitializerStatement](#forInitializerStatement) [expression](#expression)? `;` [expressionList](#expressionList)? <br/>
&emsp;&emsp;[declaredIdentifier](#declaredIdentifier) __in__ [expression](#expression) <br/>
&emsp;&emsp;[identifier](#identifier) __in__ [expression](#expression) <br/>

<a name="forInitializerStatement"></a>
**forInitializerStatement**: <br/>
&emsp;&emsp;[localVariableDeclaration](#localVariableDeclaration) <br/>
&emsp;&emsp;[expression](#expression)? `;` <br/>

<a name="whileStatement"></a>
**whileStatement**: <br/>
&emsp;&emsp;__while__ `(` [expression](#expression) `)` [statement](#statement) <br/>

<a name="doStatement"></a>
**doStatement**: <br/>
&emsp;&emsp;__do__ [statement](#statement) __while__ `(` [expression](#expression) `)` `;` <br/>

<a name="switchStatement"></a>
**switchStatement**: <br/>
&emsp;&emsp;__switch__ `(` [expression](#expression) `)` `{` [switchCase](#switchCase)* [defaultCase](#defaultCase)? `}` <br/>

<a name="switchCase"></a>
**switchCase**: <br/>
&emsp;&emsp;[label](#label)* __case__ [expression](#expression) `:` [statements](#statements) <br/>

<a name="defaultCase"></a>
**defaultCase**: <br/>
&emsp;&emsp;[label](#label)* __default__ `:` [statements](#statements) <br/>

<a name="rethrowStatement"></a>
**rethrowStatement**: <br/>
&emsp;&emsp;__rethrow__ `;` <br/>

<a name="tryStatement"></a>
**tryStatement**: <br/>
&emsp;&emsp;__try__ [block](#block) ([onPart](#onPart)+ [finallyPart](#finallyPart)? | [finallyPart](#finallyPart)) <br/>

<a name="onPart"></a>
**onPart**: <br/>
&emsp;&emsp;[catchPart](#catchPart) [block](#block) <br/>
&emsp;&emsp;__on__ [type](#type) [catchPart](#catchPart)? [block](#block) <br/>

<a name="catchPart"></a>
**catchPart**: <br/>
&emsp;&emsp;__catch__ `(` [identifier](#identifier) (`,` [identifier](#identifier))? `)` <br/>

<a name="finallyPart"></a>
**finallyPart**: <br/>
&emsp;&emsp;__finally__ [block](#block) <br/>

<a name="returnStatement"></a>
**returnStatement**: <br/>
&emsp;&emsp;__return__ [expression](#expression)? `;` <br/>

<a name="label"></a>
**label**: <br/>
&emsp;&emsp;[identifier](#identifier) `:` <br/>

<a name="breakStatement"></a>
**breakStatement**: <br/>
&emsp;&emsp;__break__ [identifier](#identifier)? `;` <br/>

<a name="continueStatement"></a>
**continueStatement**: <br/>
&emsp;&emsp;__continue__ [identifier](#identifier)? `;` <br/>

<a name="yieldStatement"></a>
**yieldStatement**: <br/>
&emsp;&emsp;__yield__ [expression](#expression) `;` <br/>

<a name="yieldEachStatement"></a>
**yieldEachStatement**: <br/>
&emsp;&emsp;__yield__* [expression](#expression) `;` <br/>

<a name="assertStatement"></a>
**assertStatement**: <br/>
&emsp;&emsp;[assert](#assert) `(` [conditionalExpression](#conditionalExpression) `)` `;` <br/>

<a name="topLevelDefinition"></a>
**topLevelDefinition**: <br/>
&emsp;&emsp;[classDefinition](#classDefinition) <br/>
&emsp;&emsp;[enumType](#enumType) <br/>
&emsp;&emsp;[typeAlias](#typeAlias) <br/>
&emsp;&emsp;__external__? [functionSignature](#functionSignature) `;` <br/>
&emsp;&emsp;__external__? [getterSignature](#getterSignature) `;` <br/>
&emsp;&emsp;__external__? [setterSignature](#setterSignature) `;` <br/>
&emsp;&emsp;[functionSignature](#functionSignature) [functionBody](#functionBody) <br/>
&emsp;&emsp;[returnType](#returnType)? __get__ [identifier](#identifier) [functionBody](#functionBody) <br/>
&emsp;&emsp;[returnType](#returnType)? __set__ [identifier](#identifier) [formalParameterList](#formalParameterList) [functionBody](#functionBody) <br/>
&emsp;&emsp;(__final__ | __const__) [type](#type)? [staticFinalDeclarationList](#staticFinalDeclarationList) `;` <br/>
&emsp;&emsp;[variableDeclaration](#variableDeclaration) `;` <br/>

<a name="getOrSet"></a>
**getOrSet**: <br/>
&emsp;&emsp;__get__ <br/>
&emsp;&emsp;__set__ <br/>

<a name="libraryDefinition"></a>
**libraryDefinition**: <br/>
&emsp;&emsp;[scriptTag](#scriptTag)? [libraryName](#libraryName)? [importOrExport](#importOrExport)* [partDirective](#partDirective)* [topLevelDefinition](#topLevelDefinition)* <br/>

<a name="scriptTag"></a>
**scriptTag**: <br/>
&emsp;&emsp;`#!` (~[NEWLINE](#NEWLINE))* [NEWLINE](#NEWLINE) <br/>

<a name="libraryName"></a>
**libraryName**: <br/>
&emsp;&emsp;[metadata](#metadata) __library__ [identifier](#identifier) (`.` [identifier](#identifier))* `;` <br/>

<a name="importOrExport"></a>
**importOrExport**: <br/>
&emsp;&emsp;[libraryImport](#libraryImport)  <br/>
&emsp;&emsp;[libraryExport](#libraryExport) <br/>

<a name="libraryImport"></a>
**libraryImport**: <br/>
&emsp;&emsp;[metadata](#metadata) [importSpecification](#importSpecification) <br/>

<a name="importSpecification"></a>
**importSpecification**: <br/>
&emsp;&emsp;__import__ [uri](#uri) (__as__ [identifier](#identifier))? [combinator](#combinator)* `;` <br/>
&emsp;&emsp;__import__ [uri](#uri) __deferred__ __as__ [identifier](#identifier) [combinator](#combinator)* `;` <br/>

<a name="combinator"></a>
**combinator**: <br/>
&emsp;&emsp;__show__ [identifierList](#identifierList) <br/>
&emsp;&emsp;__hide__ [identifierList](#identifierList) <br/>

<a name="identifierList"></a>
**identifierList**: <br/>
&emsp;&emsp;[identifier](#identifier) (, [identifier](#identifier))* <br/>

<a name="libraryExport"></a>
**libraryExport**: <br/>
&emsp;&emsp;[metadata](#metadata) __export__ [uri](#uri) [combinator](#combinator)* `;` <br/>

<a name="partDirective"></a>
**partDirective**: <br/>
&emsp;&emsp;[metadata](#metadata) __part__ [uri](#uri) `;` <br/>

<a name="partHeader"></a>
**partHeader**: <br/>
&emsp;&emsp;[metadata](#metadata) __part__ __of__ [identifier](#identifier) (`.` [identifier](#identifier))* `;` <br/>

<a name="partDeclaration"></a>
**partDeclaration**: <br/>
&emsp;&emsp;[partHeader](#partHeader) [topLevelDefinition](#topLevelDefinition)* [EOF](#EOF) <br/>

<a name="uri"></a>
**uri**: <br/>
&emsp;&emsp;[stringLiteral](#stringLiteral) <br/>

<a name="type"></a>
**type**: <br/>
&emsp;&emsp;[typeName](#typeName) [typeArguments](#typeArguments)? <br/>

<a name="typeName"></a>
**typeName**: <br/>
&emsp;&emsp;[qualified](#qualified) <br/>

<a name="typeArguments"></a>
**typeArguments**: <br/>
&emsp;&emsp;`<` [typeList](#typeList) `>` <br/>

<a name="typeList"></a>
**typeList**: <br/>
&emsp;&emsp;[type](#type) (`,` [type](#type))* <br/>

<a name="typeAlias"></a>
**typeAlias**: <br/>
&emsp;&emsp;[metadata](#metadata) __typedef__ [typeAliasBody](#typeAliasBody) <br/>

<a name="typeAliasBody"></a>
**typeAliasBody**: <br/>
&emsp;&emsp;[functionTypeAlias](#functionTypeAlias) <br/>

<a name="functionTypeAlias"></a>
**functionTypeAlias**: <br/>
&emsp;&emsp;[functionPrefix](#functionPrefix) [typeParameters](#typeParameters)? [formalParameterList](#formalParameterList) `;` <br/>

<a name="functionPrefix"></a>
**functionPrefix**: <br/>
&emsp;&emsp;[returnType](#returnType)? [identifier](#identifier) <br/>

<a name="LETTER"></a>
**LETTER**: <br/>
&emsp;&emsp;`a` .. `z` <br/>
&emsp;&emsp;`A` ..`Z` <br/>

<a name="DIGIT"></a>
**DIGIT**: <br/>
&emsp;&emsp;`0` .. `9` <br/>

<a name="WHITESPACE"></a>
**WHITESPACE**: <br/>
&emsp;&emsp;(`\t` | ` ` | [NEWLINE](#NEWLINE))+ <br/>
&emsp;&emsp;`//` ~([NEWLINE](#NEWLINE))* ([NEWLINE](#NEWLINE))? <br/>

<a name="MULTI_LINE_COMMENT"></a>
**MULTI_LINE_COMMENT**: <br/>
&emsp;&emsp;`/*` ([MULTI_LINE_COMMENT](#MULTI_LINE_COMMENT) | ~ `*/`)* `*/` <br/>
