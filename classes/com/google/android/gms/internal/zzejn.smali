.class public final Lcom/google/android/gms/internal/zzejn;
.super Ljava/lang/Object;


# instance fields
.field private final zzmnb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzedk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzedk;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/google/android/gms/internal/zzejn;->zzmnb:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejn;->zzmnc:Ljava/util/List;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejp;)V
    .registers 6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_c

    check-cast p0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzejp;->zza(Lcom/google/android/gms/internal/zzejp;Lcom/google/android/gms/internal/zzejy;)V

    :goto_b
    return-void

    :cond_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t calculate hash on empty node!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    instance-of v0, p0, Lcom/google/android/gms/internal/zzeji;

    if-nez v0, :cond_45

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected children node, but got: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    check-cast p0, Lcom/google/android/gms/internal/zzeji;

    new-instance v0, Lcom/google/android/gms/internal/zzejo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzejo;-><init>(Lcom/google/android/gms/internal/zzejp;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzeji;->zza(Lcom/google/android/gms/internal/zzejl;Z)V

    goto :goto_b
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejp;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzejn;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejp;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejn;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzejq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzejq;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Lcom/google/android/gms/internal/zzejn;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzejn;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v1, Lcom/google/android/gms/internal/zzejp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzejr;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzejn;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejp;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzejp;->zza(Lcom/google/android/gms/internal/zzejp;)V

    new-instance v0, Lcom/google/android/gms/internal/zzejn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzejp;->zzb(Lcom/google/android/gms/internal/zzejp;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzejp;->zzc(Lcom/google/android/gms/internal/zzejp;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzejn;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1a
.end method


# virtual methods
.method public final zzbtz()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzedk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejn;->zzmnb:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbua()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejn;->zzmnc:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
