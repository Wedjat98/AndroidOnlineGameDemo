.class final Lcom/google/protobuf/q$d$e;
.super Lcom/google/protobuf/q$d$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private er:Ljava/lang/reflect/Method;

.field private es:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/q$d$f;-><init>(Lcom/google/protobuf/l$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1181
    iget-object v0, p0, Lcom/google/protobuf/q$d$e;->type:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/google/protobuf/l$e;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$d$e;->er:Ljava/lang/reflect/Method;

    .line 1183
    iget-object v0, p0, Lcom/google/protobuf/q$d$e;->type:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$d$e;->es:Ljava/lang/reflect/Method;

    .line 1185
    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/protobuf/q$d$e;->er:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/q$d$f;->a(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V

    .line 1197
    return-void
.end method

.method public d(Lcom/google/protobuf/q;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/protobuf/q$d$e;->es:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/google/protobuf/q$d$f;->d(Lcom/google/protobuf/q;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
