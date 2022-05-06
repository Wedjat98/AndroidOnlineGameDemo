.class public final Lcom/google/android/gms/internal/zzekn;
.super Lcom/google/android/gms/internal/zzejv;


# static fields
.field private static final zzndk:Lcom/google/android/gms/internal/zzekn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzekn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekn;->zzndk:Lcom/google/android/gms/internal/zzekn;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejv;-><init>()V

    return-void
.end method

.method public static zzcaq()Lcom/google/android/gms/internal/zzekn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzekn;->zzndk:Lcom/google/android/gms/internal/zzekn;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    check-cast p2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result v0

    :cond_1e
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzekn;

    return v0
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ValueIndex"

    return-object v0
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzekc;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzekd;->zzndb:Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method

.method public final zzcah()Ljava/lang/String;
    .registers 2

    const-string v0, ".value"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzekd;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
