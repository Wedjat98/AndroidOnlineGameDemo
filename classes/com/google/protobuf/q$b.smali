.class public abstract Lcom/google/protobuf/q$b;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/protobuf/q$c;)V
    .registers 4

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bM()Lcom/google/protobuf/q$c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/q$c;->b(Lcom/google/protobuf/q$c;)Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/q$c;->b(Lcom/google/protobuf/q$c;)Lcom/google/protobuf/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p;)V

    .line 719
    return-void
.end method

.method protected a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z
    .registers 6

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bM()Lcom/google/protobuf/q$c;

    .line 656
    invoke-static {p1, p2, p3, p0, p4}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;Lcom/google/protobuf/t$a;I)Z

    move-result v0

    return v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bM()Lcom/google/protobuf/q$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bN()Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bN()Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method protected abstract bM()Lcom/google/protobuf/q$c;
.end method

.method public bN()Lcom/google/protobuf/q$b;
    .registers 3

    .prologue
    .line 567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bN()Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q$b;->h(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bN()Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q$b;->g(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;
    .registers 4

    .prologue
    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q$b;->g(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;
    .registers 4

    .prologue
    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q$b;->h(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$b;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$b;
    .registers 4

    .prologue
    .line 669
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 670
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bM()Lcom/google/protobuf/q$c;

    move-result-object v0

    .line 671
    invoke-static {v0, p1}, Lcom/google/protobuf/q$c;->a(Lcom/google/protobuf/q$c;Lcom/google/protobuf/l$f;)V

    .line 672
    invoke-static {v0}, Lcom/google/protobuf/q$c;->b(Lcom/google/protobuf/q$c;)Lcom/google/protobuf/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;Ljava/lang/Object;)V

    .line 675
    :goto_14
    return-object p0

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/q$a;->e(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/q$b;

    move-object p0, v0

    goto :goto_14
.end method

.method public h(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$b;
    .registers 4

    .prologue
    .line 707
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 708
    invoke-virtual {p0}, Lcom/google/protobuf/q$b;->bM()Lcom/google/protobuf/q$c;

    move-result-object v0

    .line 709
    invoke-static {v0, p1}, Lcom/google/protobuf/q$c;->a(Lcom/google/protobuf/q$c;Lcom/google/protobuf/l$f;)V

    .line 710
    invoke-static {v0}, Lcom/google/protobuf/q$c;->b(Lcom/google/protobuf/q$c;)Lcom/google/protobuf/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/p$a;Ljava/lang/Object;)V

    .line 713
    :goto_14
    return-object p0

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/q$a;->f(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/q$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/q$b;

    move-object p0, v0

    goto :goto_14
.end method
