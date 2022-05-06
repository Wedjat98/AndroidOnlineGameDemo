.class public Lcom/google/firebase/database/MutableData;
.super Ljava/lang/Object;


# instance fields
.field private final zzmko:Lcom/google/android/gms/internal/zzefa;

.field private final zzmkp:Lcom/google/android/gms/internal/zzedk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzefa;Lcom/google/android/gms/internal/zzedk;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    iput-object p2, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzege;->zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzefa;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/zzi;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzefa;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzekd;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzefa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzefa;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzefa;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzefa;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzedk;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/MutableData;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelv;->zzqh(Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/MutableData;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    new-instance v3, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzefa;Lcom/google/android/gms/internal/zzedk;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/firebase/database/MutableData;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/MutableData;

    iget-object v0, v0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    check-cast p1, Lcom/google/firebase/database/MutableData;

    iget-object v1, p1, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getChildren()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_10
    new-instance v0, Lcom/google/firebase/database/zzi;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/zzi;-><init>(Lcom/google/firebase/database/MutableData;)V

    :goto_15
    return-object v0

    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/internal/zzejw;->zzj(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v0, Lcom/google/firebase/database/zzk;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/zzk;-><init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V

    goto :goto_15
.end method

.method public getChildrenCount()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwk()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwk()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPriority()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzelw;->zza(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzelw;->zza(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hasChildren()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setPriority(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzekd;->zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzefa;->zzg(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzege;->zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelw;->zzbw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelv;->zzbv(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzefa;->zzg(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefa;->zzbwr()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MutableData { key = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    const-string v0, "<none>"

    goto :goto_c
.end method

.method final zzbsv()Lcom/google/android/gms/internal/zzekd;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmko:Lcom/google/android/gms/internal/zzefa;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmkp:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzefa;->zzp(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method
