'' federal justice council
'' studio layout starting
'' logic starting
declare function AI cdecl Alias "AI" (byref starting as integer) as string

#if defined(__cplusplus)

type starting
     ai_factor as string
     ai_starts as string
     ai_output as string
end type


dim ai as byte

#else
Type aibyte
    '' Declare a default ctor, copy ctor and normal ctor
    Declare Constructor
    Declare Constructor (ByRef As aibyte)
    Declare Constructor (As Integer)

    '' Declare a destructor
    Declare Destructor

    ints As Integer Ptr
    numints As Integer
End Type

'' Define a constructor that creates 100 integers
Constructor aibyte
    ints = New Integer(100)
    numints = 100
End Constructor

'' Define a constructor that copies the integers from another object
Constructor aibyte (ByRef x As aibyte)
    ints = New Integer(x.numints)
    numints = x.numints
End Constructor

'' Define a constructor that creates some integers based on a parameter
Constructor aibyte (n As Integer)
    ints = New Integer(n)
    numints = n
End Constructor

'' Define a destructor that destroys those integers
Destructor aibyte
    Delete[] ints
End Destructor

Scope
    '' calls aibyte's default ctor
    Dim a As aibyte
    Dim x As aibyte Ptr = New aibyte

    '' calls aibyte's copy ctor
    Dim b As aibyte = a
    Dim y As aibyte Ptr = New aibyte(*x)

    '' calls aibyte's normal ctor
    Dim c As aibyte = aibyte(2)
    Dim z As aibyte Ptr = New aibyte(2)

    '' calls aibyte's dtor
    Delete x
    Delete y
    Delete z
End Scope '' <- a, b and c are destroyed here as well
#endif

end

