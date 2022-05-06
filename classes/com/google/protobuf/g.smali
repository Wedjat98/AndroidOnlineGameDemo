.class final Lcom/google/protobuf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$g$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/n;
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8924
    invoke-static {p1}, Lcom/google/protobuf/f;->a(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$g;

    .line 8925
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->a(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8927
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->L()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "File"

    aput-object v3, v2, v5

    const-class v3, Lcom/google/protobuf/f$i;

    const-class v4, Lcom/google/protobuf/f$i$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->a(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8933
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->b(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8935
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->N()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Package"

    aput-object v3, v2, v6

    const-string v3, "Dependency"

    aput-object v3, v2, v7

    const-string v3, "MessageType"

    aput-object v3, v2, v8

    const-string v3, "EnumType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Service"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Extension"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/google/protobuf/f$h;

    const-class v4, Lcom/google/protobuf/f$h$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->b(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8941
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->c(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8943
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->P()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Field"

    aput-object v3, v2, v6

    const-string v3, "Extension"

    aput-object v3, v2, v7

    const-string v3, "NestedType"

    aput-object v3, v2, v8

    const-string v3, "EnumType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ExtensionRange"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/google/protobuf/f$a;

    const-class v4, Lcom/google/protobuf/f$a$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->c(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8949
    invoke-static {}, Lcom/google/protobuf/f;->P()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->gg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->d(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8951
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->R()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Start"

    aput-object v3, v2, v5

    const-string v3, "End"

    aput-object v3, v2, v6

    const-class v3, Lcom/google/protobuf/f$a$b;

    const-class v4, Lcom/google/protobuf/f$a$b$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->d(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8957
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->e(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8959
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->T()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Number"

    aput-object v3, v2, v6

    const-string v3, "Label"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "TypeName"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Extendee"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DefaultValue"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/google/protobuf/f$f;

    const-class v4, Lcom/google/protobuf/f$f$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->e(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8965
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->f(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8967
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->V()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Value"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/google/protobuf/f$b;

    const-class v4, Lcom/google/protobuf/f$b$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->f(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8973
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->g(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8975
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->X()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Number"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/google/protobuf/f$d;

    const-class v4, Lcom/google/protobuf/f$d$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->g(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8981
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->h(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8983
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->Z()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Method"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/google/protobuf/f$n;

    const-class v4, Lcom/google/protobuf/f$n$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->h(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8989
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->i(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8991
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->ab()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "InputType"

    aput-object v3, v2, v6

    const-string v3, "OutputType"

    aput-object v3, v2, v7

    const-string v3, "Options"

    aput-object v3, v2, v8

    const-class v3, Lcom/google/protobuf/f$l;

    const-class v4, Lcom/google/protobuf/f$l$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->i(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 8997
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->j(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 8999
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->ad()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "JavaPackage"

    aput-object v3, v2, v5

    const-string v3, "JavaOuterClassname"

    aput-object v3, v2, v6

    const-string v3, "JavaMultipleFiles"

    aput-object v3, v2, v7

    const-string v3, "OptimizeFor"

    aput-object v3, v2, v8

    const-string v3, "CcGenericServices"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "JavaGenericServices"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PyGenericServices"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "UninterpretedOption"

    aput-object v4, v2, v3

    const-class v3, Lcom/google/protobuf/f$j;

    const-class v4, Lcom/google/protobuf/f$j$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->j(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9005
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->k(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9007
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->af()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MessageSetWireFormat"

    aput-object v3, v2, v5

    const-string v3, "NoStandardDescriptorAccessor"

    aput-object v3, v2, v6

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v7

    const-class v3, Lcom/google/protobuf/f$k;

    const-class v4, Lcom/google/protobuf/f$k$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->k(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9013
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->l(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9015
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->ah()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Ctype"

    aput-object v3, v2, v5

    const-string v3, "Packed"

    aput-object v3, v2, v6

    const-string v3, "Deprecated"

    aput-object v3, v2, v7

    const-string v3, "ExperimentalMapKey"

    aput-object v3, v2, v8

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v9

    const-class v3, Lcom/google/protobuf/f$g;

    const-class v4, Lcom/google/protobuf/f$g$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->l(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9021
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->m(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9023
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->aj()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/google/protobuf/f$c;

    const-class v4, Lcom/google/protobuf/f$c$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->m(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9029
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->n(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9031
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->al()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/google/protobuf/f$e;

    const-class v4, Lcom/google/protobuf/f$e$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->n(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9037
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->o(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9039
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->an()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/google/protobuf/f$o;

    const-class v4, Lcom/google/protobuf/f$o$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->o(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9045
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->p(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9047
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->ap()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/google/protobuf/f$m;

    const-class v4, Lcom/google/protobuf/f$m$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->p(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9053
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gC()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->q(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9055
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->ar()Lcom/google/protobuf/l$a;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "IdentifierValue"

    aput-object v3, v2, v6

    const-string v3, "PositiveIntValue"

    aput-object v3, v2, v7

    const-string v3, "NegativeIntValue"

    aput-object v3, v2, v8

    const-string v3, "DoubleValue"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "StringValue"

    aput-object v4, v2, v3

    const-class v3, Lcom/google/protobuf/f$p;

    const-class v4, Lcom/google/protobuf/f$p$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->q(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9061
    invoke-static {}, Lcom/google/protobuf/f;->ar()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->gg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/f;->r(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/l$a;

    .line 9063
    new-instance v0, Lcom/google/protobuf/q$d;

    invoke-static {}, Lcom/google/protobuf/f;->at()Lcom/google/protobuf/l$a;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "NamePart"

    aput-object v3, v2, v5

    const-string v3, "IsExtension"

    aput-object v3, v2, v6

    const-class v3, Lcom/google/protobuf/f$p$b;

    const-class v4, Lcom/google/protobuf/f$p$b$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/q$d;-><init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/f;->r(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/q$d;

    .line 9069
    const/4 v0, 0x0

    return-object v0
.end method
