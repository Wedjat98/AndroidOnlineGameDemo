.class public abstract Lcom/google/protobuf/q$a;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    return-void
.end method

.method private ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/q;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/z;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/protobuf/q$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z
    .registers 6

    .prologue
    .line 271
    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/z$a;->a(ILcom/google/protobuf/d;)Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/protobuf/q$a;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/q$d;->s(Lcom/google/protobuf/q$d;)Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract aW()Lcom/google/protobuf/q;
.end method

.method public aX()Lcom/google/protobuf/q$a;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aX()Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aX()Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q$a;->f(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aX()Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q$a;->e(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;
    .registers 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/protobuf/q$a;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q$d;->a(Lcom/google/protobuf/q$d;Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/google/protobuf/q$d$a;->a(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V

    .line 207
    return-object p0
.end method

.method public synthetic e(Lcom/google/protobuf/z;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/protobuf/q$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;
    .registers 4

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/protobuf/q$a;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q$d;->a(Lcom/google/protobuf/q$d;Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/google/protobuf/q$d$a;->b(Lcom/google/protobuf/q$a;Ljava/lang/Object;)V

    .line 234
    return-object p0
.end method

.method public final f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;
    .registers 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q;->a(Lcom/google/protobuf/q;Lcom/google/protobuf/z;)Lcom/google/protobuf/z;

    .line 244
    return-object p0
.end method

.method public final g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;
    .registers 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/google/protobuf/q;->b(Lcom/google/protobuf/q;)Lcom/google/protobuf/z;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/z$a;->j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/q;->a(Lcom/google/protobuf/q;Lcom/google/protobuf/z;)Lcom/google/protobuf/z;

    .line 255
    return-object p0
.end method

.method public g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 200
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public final gH()Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/q;->b(Lcom/google/protobuf/q;)Lcom/google/protobuf/z;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/protobuf/q$a;->ay()Lcom/google/protobuf/q$d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q$d;->a(Lcom/google/protobuf/q$d;Lcom/google/protobuf/l$f;)Lcom/google/protobuf/q$d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/q$d$a;->gW()Lcom/google/protobuf/t$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/protobuf/q$a;->aW()Lcom/google/protobuf/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/q;->isInitialized()Z

    move-result v0

    return v0
.end method
