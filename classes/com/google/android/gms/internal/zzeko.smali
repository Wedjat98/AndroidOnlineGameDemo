.class final Lcom/google/android/gms/internal/zzeko;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekp;


# instance fields
.field private zzndl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private zzndm:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndm:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndl:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzao([B)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndm:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndm:I

    const/4 v0, 0x1

    return v0
.end method

.method public final zzcar()Lcom/google/android/gms/internal/zzelc;
    .registers 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndm:I

    new-array v4, v0, [B

    move v1, v2

    move v3, v2

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeko;->zzndl:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_21
    new-instance v0, Lcom/google/android/gms/internal/zzelc;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/zzelc;-><init>([B)V

    return-object v0
.end method
