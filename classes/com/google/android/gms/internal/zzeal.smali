.class public final Lcom/google/android/gms/internal/zzeal;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzmmi:Lcom/google/android/gms/internal/zzeag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeag",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzeag;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeag",
            "<TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeah;->zzbtj()Lcom/google/android/gms/internal/zzeaj;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzeah;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/zzeal;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzeal;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeag;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeam;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->size()I

    move-result v0

    return v0
.end method

.method public final zzbg(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzeag;->zzbg(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeam;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbl(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeal;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzeal",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->zzbf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    if-ne v0, v1, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/zzeal;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeal;-><init>(Lcom/google/android/gms/internal/zzeag;)V

    goto :goto_a
.end method

.method public final zzbm(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeal;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzeal",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeal;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzeag;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeal;-><init>(Lcom/google/android/gms/internal/zzeag;)V

    return-object v0
.end method

.method public final zzbn(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->zzbh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbti()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->zzbti()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeam;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbtk()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->zzbtg()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbtl()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->zzbth()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
