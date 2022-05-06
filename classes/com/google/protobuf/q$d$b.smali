.class final Lcom/google/protobuf/q$d$b;
.super Lcom/google/protobuf/q$d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final er:Ljava/lang/reflect/Method;

.field private final es:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/q$d$c;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1208
    iget-object v0, p0, Lcom/google/protobuf/q$d$b;->type:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/google/protobuf/l$e;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$d$b;->er:Ljava/lang/reflect/Method;

    .line 1210
    iget-object v0, p0, Lcom/google/protobuf/q$d$b;->type:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$d$b;->es:Ljava/lang/reflect/Method;

    .line 1212
    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/google/protobuf/q$d$b;->er:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/q$d$c;->b(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V

    .line 1241
    return-void
.end method

.method public d(Lcom/google/protobuf/q;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 1220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    invoke-super {p0, p1}, Lcom/google/protobuf/q$d$c;->d(Lcom/google/protobuf/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1222
    iget-object v3, p0, Lcom/google/protobuf/q$d$b;->es:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/google/protobuf/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1224
    :cond_26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
