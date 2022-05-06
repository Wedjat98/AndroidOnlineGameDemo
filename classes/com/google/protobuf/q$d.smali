.class public final Lcom/google/protobuf/q$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/q$d$d;,
        Lcom/google/protobuf/q$d$g;,
        Lcom/google/protobuf/q$d$b;,
        Lcom/google/protobuf/q$d$e;,
        Lcom/google/protobuf/q$d$c;,
        Lcom/google/protobuf/q$d$f;,
        Lcom/google/protobuf/q$d$a;
    }
.end annotation


# instance fields
.field private final eg:Lcom/google/protobuf/l$a;

.field private final eq:[Lcom/google/protobuf/q$d$a;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/l$a;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 10

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p1, p0, Lcom/google/protobuf/q$d;->eg:Lcom/google/protobuf/l$a;

    .line 977
    invoke-virtual {p1}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/q$d$a;

    iput-object v0, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    .line 979
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v0, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    array-length v0, v0

    if-ge v1, v0, :cond_93

    .line 980
    invoke-virtual {p1}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 981
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 982
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v2, v3, :cond_3f

    .line 983
    iget-object v2, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    new-instance v3, Lcom/google/protobuf/q$d$d;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/google/protobuf/q$d$d;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    .line 979
    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 985
    :cond_3f
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    if-ne v2, v3, :cond_53

    .line 986
    iget-object v2, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    new-instance v3, Lcom/google/protobuf/q$d$b;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/google/protobuf/q$d$b;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_3b

    .line 989
    :cond_53
    iget-object v2, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    new-instance v3, Lcom/google/protobuf/q$d$c;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/google/protobuf/q$d$c;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_3b

    .line 993
    :cond_5f
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v2, v3, :cond_73

    .line 994
    iget-object v2, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    new-instance v3, Lcom/google/protobuf/q$d$g;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/google/protobuf/q$d$g;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_3b

    .line 996
    :cond_73
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    if-ne v2, v3, :cond_87

    .line 997
    iget-object v2, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    new-instance v3, Lcom/google/protobuf/q$d$e;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/google/protobuf/q$d$e;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_3b

    .line 1000
    :cond_87
    iget-object v2, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    new-instance v3, Lcom/google/protobuf/q$d$f;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/google/protobuf/q$d$f;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_3b

    .line 1005
    :cond_93
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/q$d;Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;
    .registers 3

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/google/protobuf/q$d;->i(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;

    move-result-object v0

    return-object v0
.end method

.method private i(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;
    .registers 4

    .prologue
    .line 1012
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/q$d;->eg:Lcom/google/protobuf/l$a;

    if-eq v0, v1, :cond_10

    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/q$d;->eq:[Lcom/google/protobuf/q$d$a;

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic s(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/protobuf/q$d;->eg:Lcom/google/protobuf/l$a;

    return-object v0
.end method
