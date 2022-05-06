.class public abstract Lcom/google/protobuf/q;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/q$1;,
        Lcom/google/protobuf/q$d;,
        Lcom/google/protobuf/q$b;,
        Lcom/google/protobuf/q$c;,
        Lcom/google/protobuf/q$a;
    }
.end annotation


# instance fields
.field private ed:Lcom/google/protobuf/z;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/protobuf/z;->hi()Lcom/google/protobuf/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q;->ed:Lcom/google/protobuf/z;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/q;Lcom/google/protobuf/z;)Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protobuf/q;->ed:Lcom/google/protobuf/z;

    return-object p1
.end method

.method private static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 937
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v0

    return-object v0

    .line 938
    :catch_5
    move-exception v0

    .line 939
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 942
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 944
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1a

    .line 945
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 946
    :cond_1a
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_21

    .line 947
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 949
    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7

    .prologue
    .line 925
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 926
    :catch_5
    move-exception v0

    .line 927
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generated message class \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/google/protobuf/q;)Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/protobuf/q;->ed:Lcom/google/protobuf/z;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/q;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/q;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/q;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/q;->gS()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private gS()Ljava/util/Map;
    .registers 6

    .prologue
    .line 73
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/q;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/q$d;->s(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/l$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 77
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 80
    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 83
    :cond_37
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->d(Lcom/google/protobuf/l$f;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 88
    :cond_45
    return-object v2
.end method


# virtual methods
.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/protobuf/q;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/q$d;->s(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract ay()Lcom/google/protobuf/q$d;
.end method

.method public d(Lcom/google/protobuf/l$f;)Z
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/protobuf/q;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q$d;->a(Lcom/google/protobuf/q$d;Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/q$d$a;->e(Lcom/google/protobuf/q;)Z

    move-result v0

    return v0
.end method

.method public g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/protobuf/q;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q$d;->a(Lcom/google/protobuf/q$d;Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/q$d$a;->d(Lcom/google/protobuf/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public gG()Ljava/util/Map;
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/protobuf/q;->gS()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final gH()Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/protobuf/q;->ed:Lcom/google/protobuf/z;

    return-object v0
.end method

.method public isInitialized()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/google/protobuf/q;->aT()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 95
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->d(Lcom/google/protobuf/l$f;)Z

    move-result v3

    if-nez v3, :cond_27

    move v0, v1

    .line 118
    :goto_26
    return v0

    .line 101
    :cond_27
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v3, v4, :cond_d

    .line 102
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    .line 106
    invoke-interface {v0}, Lcom/google/protobuf/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v1

    .line 107
    goto :goto_26

    .line 111
    :cond_53
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->d(Lcom/google/protobuf/l$f;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    invoke-interface {v0}, Lcom/google/protobuf/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 112
    goto :goto_26

    .line 118
    :cond_67
    const/4 v0, 0x1

    goto :goto_26
.end method
