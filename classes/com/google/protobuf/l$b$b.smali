.class final Lcom/google/protobuf/l$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final cU:Lcom/google/protobuf/l$g;

.field private final fullName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/l$g;)V
    .registers 4

    .prologue
    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    iput-object p3, p0, Lcom/google/protobuf/l$b$b;->cU:Lcom/google/protobuf/l$g;

    .line 1747
    iput-object p2, p0, Lcom/google/protobuf/l$b$b;->fullName:Ljava/lang/String;

    .line 1748
    iput-object p1, p0, Lcom/google/protobuf/l$b$b;->name:Ljava/lang/String;

    .line 1749
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/google/protobuf/l$b$b;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/google/protobuf/l$b$b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/google/protobuf/l$b$b;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/google/protobuf/l$b$b;->cU:Lcom/google/protobuf/l$g;

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->gB()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method
