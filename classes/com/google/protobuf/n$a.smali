.class final Lcom/google/protobuf/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final eg:Lcom/google/protobuf/l$a;

.field private final number:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/l$a;I)V
    .registers 3

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/protobuf/n$a;->eg:Lcom/google/protobuf/l$a;

    .line 250
    iput p2, p0, Lcom/google/protobuf/n$a;->number:I

    .line 251
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 259
    instance-of v1, p1, Lcom/google/protobuf/n$a;

    if-nez v1, :cond_6

    .line 263
    :cond_5
    :goto_5
    return v0

    .line 262
    :cond_6
    check-cast p1, Lcom/google/protobuf/n$a;

    .line 263
    iget-object v1, p0, Lcom/google/protobuf/n$a;->eg:Lcom/google/protobuf/l$a;

    iget-object v2, p1, Lcom/google/protobuf/n$a;->eg:Lcom/google/protobuf/l$a;

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/protobuf/n$a;->number:I

    iget v2, p1, Lcom/google/protobuf/n$a;->number:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/protobuf/n$a;->eg:Lcom/google/protobuf/l$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/n$a;->number:I

    add-int/2addr v0, v1

    return v0
.end method
