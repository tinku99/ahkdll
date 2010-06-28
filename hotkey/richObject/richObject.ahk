; richobject.ahk
;; test:
test:
obj := richObject()
obj._insert("red", 0xFF0000)
obj._insert("blue", 0x0000FF)
obj._insert("green", 0x00FF00)
fruits := richObject()
fruits._insert("grapes", "green")
fruits._insert("apple", "red")
obj._insert("zfruits", fruits)

copy := obj.DeepCopy()
msgbox % "colors: " obj.print() "`ncopy: " copy.print() "`nare they equal ?:" obj.equal(copy)  
obj._remove("zfruits")
msgbox % "removed zfruits from original`n`noriginal: "  obj.print() . "`ncopy: " copy.print() "`n`nstill equal ?:" obj.equal(copy)  

obj._insert(1, 2, 2, obj)
example :=  "circular object: " obj.print()

example .= "`ncircular object equal to itself ?  " obj.equal(obj)
flat := objFlatten(obj)
example .= "`nflattened circuluar object: " flat.print()
msgbox % example
return

;; includes
#Include *i debug.ahk


;; richObject(){ 
richObject(){ 
   static richObject 
   If !richObject {
      richObject := Object("base", Object("print", "objPrint", "show"
      , "objShow", "copy", "objCopy", "new", "newStub", "type", "map"
                             , "deepCopy", "objDeepCopy", "equal", "objEqual"
             , "flatten", "objFlatten"  ))
      
      "".base.__Set := "Default_Set_AutomaticVarInit"
      "".base._Insert := "Default_Insert"
       new() ; setup variadic function using callback
      }

   
   return  Object("base", richObject) 
} 


;; objDeepCopy(ast, reserved=0)
objDeepCopy(ast, reserved=0)
{

  if !reserved
   reserved := object("copied" . &ast, 1)  ; to keep track of unique objects within top object
  if !isobject(ast)
   return ast
  copy := object("base", objDeepCopy(ast.base))
  enum := ast._newenum()
  while enum[key, value]
{
  if reserved["copied" . &value]
    continue  ; don't copy repeat objects (circular references)
  copy._Insert(key, objDeepCopy(value, reserved))
}
  return copy
}


;; objPrint(ast, reserved=0)
objShow(ast)
{
msgbox % objPrint(ast)
}

objPrint(ast, reserved=0)
{
  if !isobject(ast)
    return " " ast " "
  
  if !reserved
    reserved := object("seen" . &ast, 1)  ; to keep track of unique objects within top object
  
  enum := ast._newenum()
  while enum[key, value]
  {
    if reserved["seen" . &value]
      string .= key . ": WARNING: CIRCULAR OBJECT SKIPPED !!!`n "  
    else
      string .= key . ": " . objPrint(value, reserved) "`n"
  }
  return "(" string ") "
}

;; objEqual(x, y, reserved=0)
objEqual(x, y, reserved=0)
{
  if !reserved
   reserved := object("seen" . &x, 1)  ; to keep track of unique objects within top object


  if !(x != y) ; equal non-object values or exact same object
    return 1 ; note != obeys StringCaseSense, unlike = and ==
  if !isobject(x)
    return 0 ; unequal non-object value
  ; recursively compare contents of both objects:
  enumx := x._newenum()
  enumy := y._newenum()
  while enumx[xkey, xvalue] && enumy[ykey, yvalue]
     {
     if (xkey != ykey)
       return 0
   
    if reserved["seen" . &value]
       continue  ; don't compare repeat objects (circular references)

     if !objEqual(xvalue, yvalue)
       return 0
    }
  ; finally, check that there are no excess key-value pairs in y:
  return ! enumy[ykey]
}


;; objCopy(ast)
objCopy(ast)
{
  if !isobject(ast)
   return ast

  copy := object("base", objDeepCopy(ast.base))
  enum := ast._newenum()
  while enum[key, value]
     copy._Insert(key, value)
  return copy
}

;; objIsCircular(ast, reserved=0)
objIsCircular(ast, reserved=0)
{
  if !reserved
    reserved := object("seen" . &ast, 1)  ; to keep track of unique objects within top object
  
  if !isobject(ast)
    return " " ast " "
  enum := ast._newenum()
  while enum[key, value]
  {   
    if reserved["seen" . &value]
    {
      msgbox error: circular references not supported
      return 1
    }
    objIsCircular(value, reserved)
  }
  return 0
}


;; objFlatten(ast, reserved=0)
objFlatten(ast, reserved=0)
{
  if !isobject(ast)
    return ast
  if !reserved
    reserved := object("seen" . &ast, 1)  ; to keep track of unique objects within top object

  flat := richObject() ; flat object
  
  enum := ast._newenum()
  while enum[key, value]
  {
    if !isobject(value)
      flat._Insert(value)
    else
    {
    if reserved["seen" . &value]
      continue
      next := objFlatten(value, reserved)
      loop % next._MaxIndex()
      flat._Insert(next[A_Index])
      
    }
  }
  return flat
}




;; objDeclare(list)
objDeclare(list)
{
  global
  loop % list._maxIndex()
  {
    x := list[A_Index]
    %x% := list.x := object()
  }
  return list
}
;; Default Object initialization


Default_Set_AutomaticVarInit(ByRef var, key, value)
{
    if var =
        var := Object(key, value)
}
Default_Insert(ByRef var, key, value=0)
{
  if var = 
  {
    var := Object()
    if value
      objInsert(var, key, value)
    else
      objInsert(var, key)
  }
}


;; new
newStub(NameOfBaseObject, PositionToInsert, valueList)
{
 ; The body of this function is never executed.
}


new(aResultToken=0, aParam=0, aParamCount=0)
{
static pObjInsert, pObject
if !pObjInsert
{
  ; LowLevel_init()
  if !(vf := __findFunc("newStub"))
  || !(cb := RegisterCallback("new", "C F", 3))
  || !(ppObjInsert := __findFunc("objInsert") + 4)
  || !(ppObject := __findFunc("object") + 4)
  {
    MsgBox FAILED initializing new
    ExitApp
  }
  NumPut(true, vf + 49, 0, "char") ; vf.IsBuiltIn := true
  NumPut(cb, vf + 4)               ; vf.BIF := cb
  pObjInsert := numget(ppObjInsert+0)
  pObject := numget(ppObject+0)
  
  return
}

  type := __getTokenValue(NumGet(aParam + A_PtrSize))        
  obj := %type%()
  basetype := obj.type
if (obj.type == "array"){
  __setParamToken(NumGet(aParam + 0), obj) ; replace 0 with a new object
  __setParamToken(NumGet(aParam + A_PtrSize), 1) ; insert at index 1
  dllcall(pObjInsert + 0, "ptr", aResultToken, "ptr", aParam, "ptr"
  ,  aParamCount, "cdecl")
  __setResultToken(aResultToken, obj)
}
if (obj.type == "map"){
  dllcall(pObject + 0, "ptr", aResultToken, "ptr", aParam + (2 * A_PtrSize), "ptr"
  ,  aParamCount - 2, "cdecl")
 map := __getTokenValue(aResultToken + 0) 
 ;  objshow(map)  
  map.base := obj.base
  __setResultToken(aResultToken, map)

}
 ;  msgbox % "in new(): " objprint(obj) 
 ;  ListVars 

  
return
}


;; array(){ 
array(){ 
   static array 
   If !array {
      array := Object("base", richObject(), "type", "array")
      } 
   return  Object("base", array) 
} 


;; map(){ 
map(){ 
   static map 
   If !map {
      map := Object("base", richObject(), "type", "map")
      } 
   return  Object("base", map) 
} 





