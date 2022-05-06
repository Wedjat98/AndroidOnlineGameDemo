.class public final Lcom/google/android/gms/internal/zzeak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final zzmmg:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/zzeat",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final zzmmh:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeap;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeap",
            "<TK;TV;>;TK;",
            "Ljava/util/Comparator",
            "<TK;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzeak;->zzmmh:Z

    move-object v0, p1

    :goto_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    if-eqz p2, :cond_31

    if-eqz p4, :cond_28

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeap;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :goto_1f
    if-gez v1, :cond_33

    if-nez p4, :cond_4c

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeap;->zzbtq()Lcom/google/android/gms/internal/zzeap;

    move-result-object v0

    goto :goto_d

    :cond_28
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeap;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_1f

    :cond_31
    const/4 v1, 0x1

    goto :goto_1f

    :cond_33
    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    check-cast v0, Lcom/google/android/gms/internal/zzeat;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void

    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzeat;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_4c

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeap;->zzbtq()Lcom/google/android/gms/internal/zzeap;

    move-result-object v0

    goto :goto_d

    :cond_4c
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeap;->zzbtp()Lcom/google/android/gms/internal/zzeap;

    move-result-object v0

    goto :goto_d
.end method

.method private final next()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeat;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeat;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeat;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeak;->zzmmh:Z

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeat;->zzbtp()Lcom/google/android/gms/internal/zzeap;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzeat;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeap;->zzbtq()Lcom/google/android/gms/internal/zzeap;

    move-result-object v2

    goto :goto_1d

    :cond_31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeat;->zzbtq()Lcom/google/android/gms/internal/zzeap;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzeat;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeap;->zzbtp()Lcom/google/android/gms/internal/zzeap;
    :try_end_47
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_47} :catch_49

    move-result-object v2

    goto :goto_35

    :catch_49
    move-exception v1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_50
    return-object v3
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeak;->zzmmg:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeak;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
