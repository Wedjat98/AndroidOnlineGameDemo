.class final Lcom/google/protobuf/l$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final dd:Lcom/google/protobuf/l$h;

.field private final number:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/l$h;I)V
    .registers 3

    .prologue
    .line 1791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1792
    iput-object p1, p0, Lcom/google/protobuf/l$b$a;->dd:Lcom/google/protobuf/l$h;

    .line 1793
    iput p2, p0, Lcom/google/protobuf/l$b$a;->number:I

    .line 1794
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1802
    instance-of v1, p1, Lcom/google/protobuf/l$b$a;

    if-nez v1, :cond_6

    .line 1806
    :cond_5
    :goto_5
    return v0

    .line 1805
    :cond_6
    check-cast p1, Lcom/google/protobuf/l$b$a;

    .line 1806
    iget-object v1, p0, Lcom/google/protobuf/l$b$a;->dd:Lcom/google/protobuf/l$h;

    iget-object v2, p1, Lcom/google/protobuf/l$b$a;->dd:Lcom/google/protobuf/l$h;

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/protobuf/l$b$a;->number:I

    iget v2, p1, Lcom/google/protobuf/l$b$a;->number:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/google/protobuf/l$b$a;->dd:Lcom/google/protobuf/l$h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/l$b$a;->number:I

    add-int/2addr v0, v1

    return v0
.end method
