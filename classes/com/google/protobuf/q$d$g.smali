.class final Lcom/google/protobuf/q$d$g;
.super Lcom/google/protobuf/q$d$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final ex:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 8

    .prologue
    .line 1252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/q$d$f;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1254
    iget-object v0, p0, Lcom/google/protobuf/q$d$g;->type:Ljava/lang/Class;

    const-string v1, "newBuilder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$d$g;->ex:Ljava/lang/reflect/Method;

    .line 1255
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/protobuf/q$d$g;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1267
    :goto_8
    return-object p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/q$d$g;->ex:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t$a;

    check-cast p1, Lcom/google/protobuf/t;

    invoke-interface {v0, p1}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/t$a;->aY()Lcom/google/protobuf/t;

    move-result-object p1

    goto :goto_8
.end method


# virtual methods
.method public a(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1274
    invoke-direct {p0, p2}, Lcom/google/protobuf/q$d$g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/q$d$f;->a(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V

    .line 1275
    return-void
.end method

.method public gW()Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/protobuf/q$d$g;->ex:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t$a;

    return-object v0
.end method
