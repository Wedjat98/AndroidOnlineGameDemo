.class final Lcom/google/android/gms/internal/zzeay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/internal/zzeaz;",
        ">;"
    }
.end annotation


# instance fields
.field private zzmmw:I

.field private synthetic zzmmx:Lcom/google/android/gms/internal/zzeax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeax;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeay;->zzmmx:Lcom/google/android/gms/internal/zzeax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeay;->zzmmx:Lcom/google/android/gms/internal/zzeax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeax;->zza(Lcom/google/android/gms/internal/zzeax;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzeay;->zzmmw:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzeay;->zzmmw:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeay;->zzmmx:Lcom/google/android/gms/internal/zzeax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeax;->zzb(Lcom/google/android/gms/internal/zzeax;)J

    move-result-wide v2

    iget v1, p0, Lcom/google/android/gms/internal/zzeay;->zzmmw:I

    shl-int v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v2, v4

    new-instance v1, Lcom/google/android/gms/internal/zzeaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeaz;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    :goto_18
    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzeaz;->zzmmy:Z

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcom/google/android/gms/internal/zzeay;->zzmmw:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/gms/internal/zzeaz;->zzmmz:I

    iget v0, p0, Lcom/google/android/gms/internal/zzeay;->zzmmw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzeay;->zzmmw:I

    return-object v1

    :cond_2d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final remove()V
    .registers 1

    return-void
.end method
