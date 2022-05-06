.class public Lcom/google/android/gms/internal/zzejg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzejg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/zzejg;",
        ">;"
    }
.end annotation


# static fields
.field private static final zznbs:Lcom/google/android/gms/internal/zzejg;

.field private static final zznbt:Lcom/google/android/gms/internal/zzejg;

.field private static final zznbu:Lcom/google/android/gms/internal/zzejg;

.field private static final zznbv:Lcom/google/android/gms/internal/zzejg;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbv:Lcom/google/android/gms/internal/zzejg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzejh;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbzn()Lcom/google/android/gms/internal/zzejg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public static zzbzo()Lcom/google/android/gms/internal/zzejg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public static zzbzp()Lcom/google/android/gms/internal/zzejg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public static zzbzq()Lcom/google/android/gms/internal/zzejg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbv:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzejg;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    return-object v0
.end method

.method public static zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelt;->zzqg(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzejg$zza;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzejg$zza;-><init>(Ljava/lang/String;I)V

    :goto_f
    return-object v0

    :cond_10
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    goto :goto_f

    :cond_1b
    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejg;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ChildKey(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzr()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected zzbzs()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzejg;)I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p0, p1, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    if-eq p0, v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    if-eq p1, v2, :cond_16

    sget-object v2, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    if-ne p0, v2, :cond_18

    :cond_16
    move v0, v1

    goto :goto_5

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejg;->zzbzs()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzs()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejg;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzv(II)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzv(II)I

    move-result v0

    goto :goto_5

    :cond_43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzs()Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    goto :goto_5

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method
