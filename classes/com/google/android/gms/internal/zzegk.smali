.class public final Lcom/google/android/gms/internal/zzegk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzedi;


# static fields
.field private static zzmxh:Lcom/google/android/gms/internal/zzegk;


# instance fields
.field private zzmxg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/internal/zzedh;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzedh;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzegk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzegk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzegk;->zzmxh:Lcom/google/android/gms/internal/zzegk;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    return-void
.end method

.method public static zzbxf()Lcom/google/android/gms/internal/zzegk;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzegk;->zzmxh:Lcom/google/android/gms/internal/zzegk;

    return-object v0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzedh;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_29

    move v2, v1

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_69

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_67

    :goto_4d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_6c

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    monitor-exit v3

    return-void

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :catchall_6f
    move-exception v0

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_4 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzedh;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_48

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedh;->zzco(Z)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/android/gms/internal/zzedi;)V

    monitor-exit v1

    return-void

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/zzedh;)V
    .registers 8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegk;->zzmxg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_53

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_29
    if-ltz v2, :cond_53

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedh;->zzbwc()V

    :cond_45
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_29

    :cond_49
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedh;->zzbwc()V

    :cond_53
    monitor-exit v3

    return-void

    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v0
.end method
