.class public final Lcom/google/android/gms/internal/zzejx;
.super Lcom/google/android/gms/internal/zzejv;


# static fields
.field private static final zzncs:Lcom/google/android/gms/internal/zzejx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzejx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzejx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzejx;->zzncs:Lcom/google/android/gms/internal/zzejx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejv;-><init>()V

    return-void
.end method

.method public static zzcal()Lcom/google/android/gms/internal/zzejx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzejx;->zzncs:Lcom/google/android/gms/internal/zzejx;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    check-cast p2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejx;

    return v0
.end method

.method public final hashCode()I
    .registers 2

    const/16 v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzekc;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzekc;->zzcan()Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    return-object v0
.end method

.method public final zzcah()Ljava/lang/String;
    .registers 2

    const-string v0, ".key"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
    .registers 6

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v1
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzekd;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
