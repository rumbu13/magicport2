
auto basicTypes = [
    "void",
    "bool",
    "char",
    "short",
    "int",
    "long",
    "float",
    "double",

    "volatile",
    "unsigned",
    "signed",
    
    "size_t",
    "time_t",
    "wchar_t",
    "longdouble",
    "volatile_longdouble",
    "uinteger_t",
    "sinteger_t",
    "dinteger_t",
    "dchar_t",
    "real_t",
    "complex_t",
    "d_float32",
    "d_float64",
    "d_float80",
    "d_int8",
    "d_uns8",
    "d_int16",
    "d_uns16",
    "d_int32",
    "d_uns32",
    "d_int64",
    "d_uns64",
    "d_wchar",
    "d_dchar",
    "longlong",
    "ulonglong",
    "targ_float",
    "targ_double",
    "targ_ldouble",
    "targ_llong",
    "targ_ullong",
    "targ_ulong",
    "targ_ushort",
    "targ_uchar",
    "targ_size_t",
    "targ_char",
    "targ_schar",
    "targ_short",
    "targ_int",
    "targ_uns",
    "targ_long",
    "targ_ptrdiff_t",
    "hash_t",
    "intmax_t",
    "uintmax_t",
    "_Complex",
    "DWORD",
    "HANDLE",

    "int8_t",
    "uint8_t",
    "int16_t",
    "uint16_t",
    "int32_t",
    "uint32_t",
    "int64_t",
    "uint64_t",
    "off_t",
    "ssize_t",

    "fp_t",
    "icfp_t",
    "fp2_t",
    "Dsymbol_apply_ft_t",
    "uid_t",
    "gid_t",
    "cmpfunc_t",
    "pid_t",
    "sds_fp_t",
    "apply_fp_t",
    "param_fp_t",
    "sh_fp_t",
    "oa_fp_t",
    "type_fp",
    "dsymbol_fp",
    "utf32_t",
    "utf16_t",
    "utf8_t",
    "padd_fp_t",
    "fpcmp_t",
    "ForeachDg",
    "FINALIZERPROC",
    "sapply_fp_t",
    "fp_speller_t",
    
    "TY",
    "StorageClass",
    "MATCH",
    "PROT",
    "NeedInterpret",
    "FLAGS",
    "AliasThisRec",
];

struct Tuple(T...)
{
    T expand;
}
auto tuple(T...)(T args)
{
    return Tuple!T(args);
}

enum expTypes = tuple(
    "Expression",
    "DotIdExp",
    "BinExp",
    "UnaExp",
    "ErrorExp",
    "IntegerExp",
    "CmpExp",
    "IdentifierExp",
    "ArrayLengthExp",
    "PostExp",
    "VarExp",
    "CallExp",
    "ArrayExp",
    "CastExp",
    "AssignExp",
    "NegExp",
    "ComExp",
    "StringExp",
    "RealExp",
    "DeclarationExp",
    "NewExp",
    "DsymbolExp",
    "OverExp",
    "NullExp",
    "AddrExp",
    "VectorExp",
    "SymOffExp",
    "TupleExp",
    "ArrayLiteralExp",
    "AssocArrayLiteralExp",
    "StructLiteralExp",
    "DelegateExp",
    "ThisExp",
    "CondExp",
    "CommaExp",
    "ScopeExp",
    "FuncExp",
    "MulExp",
    "PtrExp",
    "DotVarExp",
    "EqualExp",
    "AndAndExp",
    "OrOrExp",
    "ComplexExp",
    "AddExp",
    "ConstructExp",
    "SliceExp",
    "DeleteExp",
    "IndexExp",
    "CatExp",
    "DotTemplateExp",
    "TemplateExp",
    "TypeExp",
    "DollarExp",
    "DotTypeExp",
    "SuperExp",
    "NewAnonClassExp",
    "SymbolExp",
    "TypeidExp",
    "TraitsExp",
    "HaltExp",
    "IsExp",
    "CompileExp",
    "FileExp",
    "AssertExp",
    "DotExp",
    "RemoveExp",
    "UAddExp",
    "NotExp",
    "BoolExp",
    "MinExp",
    "DivExp",
    "ModExp",
    "AndExp",
    "OrExp",
    "XorExp",
    "ShlExp",
    "ShrExp",
    "UshrExp",
    "PreExp",
    "AddAssignExp",
    "MinAssignExp",
    "CatAssignExp",
    "MulAssignExp",
    "DivAssignExp",
    "ModAssignExp",
    "ShlAssignExp",
    "ShrAssignExp",
    "UshrAssignExp",
    "AndAssignExp",
    "OrAssignExp",
    "XorAssignExp",
    "PowAssignExp",
    "BinAssignExp",
    "PowExp",
    "InExp",
    "IdentityExp",
    "DefaultInitExp",
    "FileInitExp",
    "LineInitExp",
    "ClassReferenceExp",
    "VoidInitExp",
    "ThrownExceptionExp",
    "ModuleInitExp",
    "FuncInitExp",
    "PrettyFuncInitExp",
    "DotTemplateInstanceExp",
);

enum typeTypes = tuple(
    "TypeClass",
    "TypeStruct",
    "TypeTuple",
    "TypeFunction",
    "TypeDelegate",
    "TypeVector",
    "TypeSArray",
    "TypeAArray",
    "TypeIdentifier",
    "TypeTypedef",
    "TypeDArray",
    "TypePointer",
    "TypeEnum",
    "TypeError",
    "TypeArray",
    "TypeReference",
    "TypeNext",
    "TypeBasic",
    "TypeNull",
    "TypeQualified",
    "TypeInstance",
    "TypeTypeof",
    "TypeReturn",
    "TypeSlice",
    "Type",
);

auto structTypes =
[
    "Loc",
    "HdrGenState",
    "AA",
    "aaA",
    "Key",
    "Value",
    "Array",
    "GC",
    "Mem",
    "SCstring",
    "CanThrow",
    "IntRange",
    "SignExtendedNumber",
    "CppMangleState",
    "DocComment",
    "Macro",
    "Escape",
    "Token",
    "elem",
    "IRState",
    "tym_t",
    "va_list",
    "Param1",
    "Param2",
    "Param3",
    "Match",
    "type",
    "Outbuffer",
    "FuncParamRegs",
    "Blockx",
    "jmp_buf",
    "ASM_STATE",
    "OP",
    "opflag_t",
    "REG",
    "ASM_JUMPTYPE",
    "OPND",
    "code",
    "regm_t",
    "PTRNTAB",
    "ASM_OPERAND_TYPE",
    "ASM_MODIFIERS",
    "Srcpos",
    "MODRM_BYTE",
    "SIB_BYTE",
    "ASMTK",
    "block",
    "Msgtable",
    "InlineCostState",
    "InlineDoState",
    "InlineScanState",
    "ICS1",
    "ICS2",
    "CtfeStack",
    "InterState",
    "CtfeStatus",
    "CtfeGoal",
    "TOK",
    "STATE",
    "Keyword",
    "ObjModule",
    "ObjSymbol",
    "LibElf",
    "LibMSCoff",
    "Header",
    "Elf32_Hdr",
    "Elf32_Shdr",
    "Elf32_Sym",
    "Elf32_Ehdr",
    "Elf64_Ehdr",
    "Elf64_Shdr",
    "Elf64_Sym",
    "Elf64_Hdr",
    "LibMach",
    "mach_header",
    "mach_signature",
    "mach_header_64",
    "load_command",
    "segment_command",
    "symtab_command",
    "dysymtab_command",
    "nlist_64",
    "nlist",
    "segment_command_64",
    "stat",
    "LibOMF",
    "LibHeader",
    "Libheader",
    "GetNthSymbolCtx",
    "GetNthParamCtx",
    "Heap",
    "MatchExp",
    "SV",
    "Previous",
    "mangle_t",
    "enum_t",
    "idx_t",
    "CvMemberCount",
    "dt_t",
    "enum_SC",
    "Ptrait",
    "ILS",
    "TYPE",
    "Param",
    "ObjFile",
    "ObjFormat",
    "SegHandle",
    "SegOffset",
    "SymHandle",
    "StringValue",
    "FILE",
    "AsyncRead",
    "func_t",
    "PTRNTAB1",
    "PTRNTAB2",
    "PTRNTAB3",
    "PTRNTAB4",
    "param_t",
    "debtyp_t",
    "TypeTrait",
    "DsymbolTrait",
    "LPEXCEPTION_POINTERS",
    "structalign_t",
    "JsonOut",
    "DT",
    "Environment",
    "UnionFloatInt",
    "UnionDoubleLong",
    "Context",
    "cse_t",
    "immed_t",
    "Cent",
    "Complex_f",
    "Complex_d",
    "Complex_ld",
    "LIST",
    "Ctxt",
    "WIN32_FIND_DATAA",
    "UsesEH",
    "ComeFrom",
    "HasCode",
    "ArgsCppMangleCtx",
    "DArray",
    "Compiler",
    "ArrayOp",
    "utimbuf",
    "NameId",
    "Global",
    "tree_node",
    "Symbol",
    "Classsym",
    "StringTable",
    "PushIdentsDg",
    "PushBaseMembers",
    "Target",
    "Id",
    "BaseClass",
    "ModuleDeclaration",
    "CompiledCtfeFunction",
    "OutBuffer",
    "File",
    "String",
    "FileName",
    "N",
    "Scope",
    "TemplateOverloadSet",

    "LINK",
    "PREC",
    "BUILTIN",
    "PASS",
    "Sizeok",
    "Semantic",
    "PURE",
    "TRUST",
    "RET",
    "PKG",
];

auto classTypes =
[
    "Section",
    "ParamSection",
    "MacroSection",

    "ArrayBase",
    "Objects",
    "Expressions",
    "Parameters",
    "TemplateParameters",
    "Dsymbols",
    "ClassDeclarations",
    "BaseClasses",
    "Statements",
    "FuncDeclarations",
    "VarDeclarations",
    "Strings",
    "Voids",
    "Types",
    "Sections",
    "Elems",
    "Catches",
    "symbols",
    "StaticDtorDeclarations",
    "SharedStaticDtorDeclarations",
    "Identifiers",
    "Initializers",
    "Modules",
    "ObjModules",
    "ObjSymbols",
    "Symbols",
    "Blocks",
    "CompoundStatements",
    "CaseStatements",
    "Dts",
    "AliasDeclarations",
    "GotoCaseStatements",
    "TemplateInstances",
    "ReturnStatements",
    "Files",

    "Object",
    "RootObject",
    "Dsymbol",
    "DsymbolTable",
    "ScopeDsymbol",
    "LabelDsymbol",
    "WithScopeSymbol",
    "DebugSymbol",
    "VersionSymbol",
    "AliasThis",
    "Identifier",
    "PragmaScope",
    "Lexer",
    "Parser",
    "Module",
    "StringTab",
    "StringEntry",
    "symbol",
    "list_t",
    "EnumMember",
    "OverloadSet",
    "ArrayScopeSymbol",
    "Library",
    "Import",
    "Package",
    "Html",
    "Config",
    "Configv",
    "StaticAssert",
    "TemplateMixin",
    "Tuple",

    "Parameter",
    "TemplateParameter",
    "TemplateAliasParameter",
    "TemplateTupleParameter",
    "TemplateThisParameter",
    "TemplateValueParameter",
    "TemplateTypeParameter",
    
    "Initializer",
    "ExpInitializer",
    "VoidInitializer",
    "StructInitializer",
    "ArrayInitializer",
    "ErrorInitializer",
    
    "TemplateInstance",
    
    "FuncDeclaration",
    "AggregateDeclaration",
    "ClassDeclaration",
    "StructDeclaration",
    "VarDeclaration",
    "AttribDeclaration",
    "StorageClassDeclaration",
    "LinkDeclaration",
    "ProtDeclaration",
    "AlignDeclaration",
    "AnonDeclaration",
    "PragmaDeclaration",
    "ConditionalDeclaration",
    "StaticIfDeclaration",
    "CompileDeclaration",
    "ThisDeclaration",
    "NewDeclaration",
    "DeleteDeclaration",
    "CtorDeclaration",
    "DtorDeclaration",
    "InterfaceDeclaration",
    "PostBlitDeclaration",
    "AliasDeclaration",
    "TupleDeclaration",
    "TypedefDeclaration",
    "FuncAliasDeclaration",
    "FuncLiteralDeclaration",
    "TemplateDeclaration",
    "InvariantDeclaration",
    "EnumDeclaration",
    "StaticCtorDeclaration",
    "SharedStaticCtorDeclaration",
    "StaticDtorDeclaration",
    "SharedStaticDtorDeclaration",
    "UnitTestDeclaration",
    "SymbolDeclaration",
    "UnionDeclaration",
    "AnonymousAggregateDeclaration",
    "DeprecatedDeclaration",
    "UserAttributeDeclaration",
    "Declaration",

    "ClassInfoDeclaration",
    "ModuleInfoDeclaration",
    "TypeInfoConstDeclaration",
    "TypeInfoInvariantDeclaration",
    "TypeInfoSharedDeclaration",
    "TypeInfoWildDeclaration",
    "TypeInfoStructDeclaration",
    "TypeInfoClassDeclaration",
    "TypeInfoInterfaceDeclaration",
    "TypeInfoTypedefDeclaration",
    "TypeInfoPointerDeclaration",
    "TypeInfoArrayDeclaration",
    "TypeInfoStaticArrayDeclaration",
    "TypeInfoAssociativeArrayDeclaration",
    "TypeInfoVectorDeclaration",
    "TypeInfoEnumDeclaration",
    "TypeInfoFunctionDeclaration",
    "TypeInfoDelegateDeclaration",
    "TypeInfoTupleDeclaration",
    "TypeInfoDeclaration",

    "Condition",
    "DVCondition",
    "DebugCondition",
    "VersionCondition",
    "StaticIfCondition",
    "IftypeCondition",
    
    "Catch",
    "IfStatement",
    "ForStatement",
    "DeclarationStatement",
    "ExpStatement",
    "ForeachRangeStatement",
    "ReturnStatement",
    "CompoundStatement",
    "LabelStatement",
    "TryFinallyStatement",
    "PeelStatement",
    "SynchronizedStatement",
    "TryCatchStatement",
    "ForeachStatement",
    "AsmStatement",
    "UnrolledLoopStatement",
    "ScopeStatement",
    "DefaultStatement",
    "CaseStatement",
    "WithStatement",
    "StaticAssertStatement",
    "ImportStatement",
    "CompoundDeclarationStatement",
    "CompileStatement",
    "WhileStatement",
    "DoStatement",
    "OnScopeStatement",
    "ConditionalStatement",
    "PragmaStatement",
    "SwitchStatement",
    "CaseRangeStatement",
    "BreakStatement",
    "ContinueStatement",
    "GotoStatement",
    "GotoCaseStatement",
    "GotoDefaultStatement",
    "ThrowStatement",
    "VolatileStatement",
    "DtorExpStatement",
    "DebugStatement",
    "SwitchErrorStatement",
    "ErrorStatement",
    "Statement",

    expTypes.expand,
    typeTypes.expand
];

bool isIncludeGuard(string s)
{
    return s.length > 2 && s[$-2..$] == "_H";
}
