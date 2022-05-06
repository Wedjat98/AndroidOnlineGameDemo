.class public final Lcom/google/android/gms/internal/zzeju;
.super Lcom/google/android/gms/internal/zzeji;

# interfaces
.implements Lcom/google/android/gms/internal/zzekd;


# static fields
.field private static final zznco:Lcom/google/android/gms/internal/zzeju;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzeju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeju;->zznco:Lcom/google/android/gms/internal/zzeju;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeji;-><init>()V

    return-void
.end method

.method public static zzcaf()Lcom/google/android/gms/internal/zzeju;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeju;->zznco:Lcom/google/android/gms/internal/zzeju;

    return-object v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeji;->zzg(Lcom/google/android/gms/internal/zzekd;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzeju;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    instance-of v0, p1, Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_26

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p0, :cond_18

    const/4 v0, 0x0

    throw v0

    :cond_18
    check-cast p1, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    goto :goto_6

    :cond_26
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getChildCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue(Z)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public final zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    return-object p0
.end method

.method public final zzbti()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzt()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final zzbzu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbzv()Lcom/google/android/gms/internal/zzekd;
    .registers 1

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 4

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeji;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeji;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    goto :goto_6
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    throw v0

    :cond_4
    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzekd;)I
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzejg;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzejg;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-nez p0, :cond_f

    const/4 v0, 0x0

    throw v0

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzeji;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    goto :goto_6
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    return-object p0
.end method
