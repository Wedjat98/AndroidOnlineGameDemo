.class public final Lcom/google/android/gms/internal/zzeki;
.super Lcom/google/android/gms/internal/zzejv;


# static fields
.field private static final zzndg:Lcom/google/android/gms/internal/zzeki;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzeki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeki;->zzndg:Lcom/google/android/gms/internal/zzeki;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejv;-><init>()V

    return-void
.end method

.method public static zzcap()Lcom/google/android/gms/internal/zzeki;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeki;->zzndg:Lcom/google/android/gms/internal/zzeki;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    check-cast p2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_23

    :goto_22
    return v0

    :cond_23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result v0

    goto :goto_22
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzeki;

    return v0
.end method

.method public final hashCode()I
    .registers 2

    const v0, 0x302679

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "PriorityIndex"

    return-object v0
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzekc;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzekd;->zzndb:Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzejv;->zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    return-object v0
.end method

.method public final zzcah()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    new-instance v1, Lcom/google/android/gms/internal/zzekl;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzekl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzekd;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzekd;)Z
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
