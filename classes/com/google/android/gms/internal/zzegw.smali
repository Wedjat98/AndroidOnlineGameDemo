.class public final Lcom/google/android/gms/internal/zzegw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegt;


# instance fields
.field private zzmyg:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegw;->zzmyg:J

    return-void
.end method


# virtual methods
.method public final zzbx(J)Z
    .registers 6

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final zzbxp()F
    .registers 2

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public final zzbxq()J
    .registers 3

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final zzj(JJ)Z
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegw;->zzmyg:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_c

    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
