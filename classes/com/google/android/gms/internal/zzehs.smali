.class public final Lcom/google/android/gms/internal/zzehs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzmzd:Lcom/google/android/gms/internal/zzejg;

.field private zzmze:Lcom/google/android/gms/internal/zzehs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehs",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzmzf:Lcom/google/android/gms/internal/zzehw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehw",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzehw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehw;-><init>()V

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/gms/internal/zzehs;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehs;Lcom/google/android/gms/internal/zzehw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehs;Lcom/google/android/gms/internal/zzehw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejg;",
            "Lcom/google/android/gms/internal/zzehs",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzehw",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    return-void
.end method

.method private final zzbxy()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehw;->value:Ljava/lang/Object;

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    :goto_19
    iget-object v3, v0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_30

    if-eqz v3, :cond_30

    iget-object v1, v0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_2e
    const/4 v1, 0x0

    goto :goto_19

    :cond_30
    if-nez v1, :cond_3f

    if-nez v3, :cond_3f

    iget-object v1, v0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_3f
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehw;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChildren()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzehw;->value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzehs;->zzbxy()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const-string v1, ""

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    if-nez v0, :cond_50

    const-string v0, "<anon>"

    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzehw;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehv;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehv",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    array-length v0, v3

    if-ge v2, v0, :cond_2d

    aget-object v0, v3, v2

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/zzehs;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehw;

    invoke-direct {v4, v1, p0, v0}, Lcom/google/android/gms/internal/zzehs;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehs;Lcom/google/android/gms/internal/zzehw;)V

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/zzehv;->zzd(Lcom/google/android/gms/internal/zzehs;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_2d
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehv;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehv",
            "<TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzehv;->zzd(Lcom/google/android/gms/internal/zzehs;)V

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzeht;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/zzeht;-><init>(Lcom/google/android/gms/internal/zzehs;Lcom/google/android/gms/internal/zzehv;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzehs;->zza(Lcom/google/android/gms/internal/zzehv;)V

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzehv;->zzd(Lcom/google/android/gms/internal/zzehs;)V

    :cond_16
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehu;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehu",
            "<TT;>;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    :goto_2
    if-eqz v0, :cond_a

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzehu;->zze(Lcom/google/android/gms/internal/zzehs;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzak(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehs;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Lcom/google/android/gms/internal/zzehs",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzf:Lcom/google/android/gms/internal/zzehw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehw;->zzmvi:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehw;

    :goto_1b
    new-instance v2, Lcom/google/android/gms/internal/zzehs;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/gms/internal/zzehs;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehs;Lcom/google/android/gms/internal/zzehw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    move-object v1, v0

    move-object p0, v2

    goto :goto_5

    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/zzehw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehw;-><init>()V

    goto :goto_1b

    :cond_31
    return-object p0
.end method

.method public final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmze:Lcom/google/android/gms/internal/zzehs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehs;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_23

    new-instance v0, Lcom/google/android/gms/internal/zzedk;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzejg;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    goto :goto_10

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    goto :goto_10
.end method
