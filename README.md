# Delphy Study
* Forms application is VCL Forms Application
* Variable declarations:
  - var [name]:[type];
* Assignment operator is ':='
* String declartation must be with single quotes ('[string]')
* IntToStr to convert from integer to string.
* FloatToStr to convert fload or double to string.

## Flow Control
* If Syntax:
  > if [condition] Then  
  > begin  
  >[block of code]  
  > end;
* If Else Syntax:
  >if [condition]  Then  
  >begin  
  >[block of code]  
  >end  
  >Else  
  >begin  
  >[block of code]  
  >end;
* For Syntax:
  >for [variable] := [lower] [to|DownTo] [higher] do  
  >begin  
  >[block of code]  
  >end;

* There is an Switch Case, but it is better to see its syntax online.

  **FOR GOES FROM LOWER TO HIGHER (IF LOWER IS SET TO 0 AND HIGHER TO 5, IT WILL GO FROM 0 TO 5)**  
  ** DownTo decrements the iterable **

* While Syntax:
> While [BOOLEAN_CONDITION] do  
> begin  
> [block of code]  
> end;

## Form Stuff
* Whenever you create a new form, if it will not startup with the application, it must be set as available form on Project Options > Application > Forms
* To use a form in another form, go to the File > Usa Unit and select the form to be used
* Creation of the new form is like:  
  > [Form] := T[Form].Create(self);  
  > [Form].ShowModal(); (or Show)  
* To clear data stored in memory in a form, fill closed event with
  > [Form] := nil;

## General obs
*
