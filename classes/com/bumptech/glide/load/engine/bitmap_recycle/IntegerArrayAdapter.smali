.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;
.super Ljava/lang/Object;
.source "IntegerArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface",
        "<[I>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegerArrayPool"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 6
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;->getArrayLength([I)I

    move-result v0

    return v0
.end method

.method public getArrayLength([I)I
    .registers 3
    .param p1, "array"    # [I

    .prologue
    .line 17
    array-length v0, p1

    return v0
.end method

.method public getElementSizeInBytes()I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x4

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    const-string v0, "IntegerArrayPool"

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[I
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 22
    new-array v0, p1, [I

    return-object v0
.end method
