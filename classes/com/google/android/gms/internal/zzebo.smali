.class public final Lcom/google/android/gms/internal/zzebo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebd;
.implements Lcom/google/android/gms/internal/zzebm;


# static fields
.field private static zzmnd:J


# instance fields
.field private final zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmne:Lcom/google/android/gms/internal/zzebk;

.field private final zzmnp:Lcom/google/android/gms/internal/zzebg;

.field private final zzmnv:Lcom/google/android/gms/internal/zzebn;

.field private zzmnw:Ljava/lang/String;

.field private zzmnx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzmny:Z

.field private zzmnz:J

.field private zzmoa:Lcom/google/android/gms/internal/zzebc;

.field private zzmob:Lcom/google/android/gms/internal/zzeby;

.field private zzmoc:J

.field private zzmod:J

.field private zzmoe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzebx;",
            ">;"
        }
    .end annotation
.end field

.field private zzmof:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeca;",
            ">;"
        }
    .end annotation
.end field

.field private zzmog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzecc;",
            ">;"
        }
    .end annotation
.end field

.field private zzmoh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzebz;",
            "Lcom/google/android/gms/internal/zzecb;",
            ">;"
        }
    .end annotation
.end field

.field private zzmoi:Ljava/lang/String;

.field private zzmoj:Z

.field private final zzmok:Lcom/google/android/gms/internal/zzebi;

.field private final zzmol:Lcom/google/android/gms/internal/zzecp;

.field private zzmom:Ljava/lang/String;

.field private zzmon:J

.field private zzmoo:I

.field private zzmop:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzmoq:J

.field private zzmor:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzebo;->zzmnd:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzebn;)V
    .registers 12

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnx:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmny:Z

    sget-object v0, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmoc:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmod:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmon:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoo:I

    iput-object v7, p0, Lcom/google/android/gms/internal/zzebo;->zzmop:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebo;->zzmok:Lcom/google/android/gms/internal/zzebi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbud()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbuc()Lcom/google/android/gms/internal/zzebg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnp:Lcom/google/android/gms/internal/zzebg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebo;->zzmne:Lcom/google/android/gms/internal/zzebk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoe:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzecr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbub()Lcom/google/android/gms/internal/zzejd;

    move-result-object v2

    const-string v3, "ConnectionRetryHelper"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzecr;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzecr;->zzbs(J)Lcom/google/android/gms/internal/zzecr;

    move-result-object v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzecr;->zzi(D)Lcom/google/android/gms/internal/zzecr;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzecr;->zzbt(J)Lcom/google/android/gms/internal/zzecr;

    move-result-object v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzecr;->zzj(D)Lcom/google/android/gms/internal/zzecr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecr;->zzbvk()Lcom/google/android/gms/internal/zzecp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmol:Lcom/google/android/gms/internal/zzecp;

    sget-wide v0, Lcom/google/android/gms/internal/zzebo;->zzmnd:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzebo;->zzmnd:J

    new-instance v2, Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbub()Lcom/google/android/gms/internal/zzejd;

    move-result-object v3

    const-string v4, "PersistentConnection"

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "pc_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iput-object v7, p0, Lcom/google/android/gms/internal/zzebo;->zzmom:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void
.end method

.method private final isIdle()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmor:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;I)I
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoo:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzeby;)Lcom/google/android/gms/internal/zzeby;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzebz;)Lcom/google/android/gms/internal/zzecb;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebz;)Lcom/google/android/gms/internal/zzecb;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzebz;)Lcom/google/android/gms/internal/zzecb;
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "removing query "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no listener exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_70
    :goto_70
    return-object v0

    :cond_71
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzecb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    goto :goto_70
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmop:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;Ljava/util/List;Lcom/google/android/gms/internal/zzebz;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzebz;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzecb;)V
    .registers 7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "p"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecb;->zzbuu()Lcom/google/android/gms/internal/zzebz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebz;->zzb(Lcom/google/android/gms/internal/zzebz;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebj;->zzas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecb;->zzbuv()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v2, "q"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzecb;->zzb(Lcom/google/android/gms/internal/zzecb;)Lcom/google/android/gms/internal/zzebz;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzebz;->zzc(Lcom/google/android/gms/internal/zzebz;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecb;->zzbuw()Lcom/google/android/gms/internal/zzebl;

    move-result-object v0

    const-string v2, "h"

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebl;->zzbuh()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebl;->zzbui()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebl;->zzbuj()Lcom/google/android/gms/internal/zzebb;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzebb;->zzbtz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebj;->zzas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "hs"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzebb;->zzbua()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ps"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    const-string v0, "q"

    new-instance v2, Lcom/google/android/gms/internal/zzebu;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzebu;-><init>(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzecb;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzebj;->zzas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzebr;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/zzebr;-><init>(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzece;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzece;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzebj;->zzas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1a

    const-string v1, "h"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmoc:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmoc:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzecc;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/google/android/gms/internal/zzecc;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebp;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbum()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzebo;->zzbp(J)V

    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoq:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzebx;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzebx;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzebx;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmod:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmod:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "b"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/zzebc;->zza(Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmoe:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzebz;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzebz;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {p2}, Lcom/google/android/gms/internal/zzebz;->zzc(Lcom/google/android/gms/internal/zzebz;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\".indexOn\": \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzebz;->zzb(Lcom/google/android/gms/internal/zzebz;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebj;->zzas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0xaf

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzejc;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7d
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebo;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoj:Z

    return v0
.end method

.method private final zzat(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "removing all listens at path "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzebz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzecb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzebz;->zzb(Lcom/google/android/gms/internal/zzebz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_67
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    :goto_6f
    if-ge v4, v5, :cond_83

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/internal/zzecb;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecb;->zzbuu()Lcom/google/android/gms/internal/zzebz;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    :cond_83
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v3

    :goto_8d
    if-ge v1, v4, :cond_a1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/google/android/gms/internal/zzecb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecb;->zzc(Lcom/google/android/gms/internal/zzecb;)Lcom/google/android/gms/internal/zzece;

    move-result-object v0

    const-string v3, "permission_denied"

    invoke-interface {v0, v3, v7}, Lcom/google/android/gms/internal/zzece;->zzbd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_a1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    return-object v0
.end method

.method private final zzbp(J)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzecc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzecc;->zzbut()Lcom/google/android/gms/internal/zzece;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzecc;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzecc;->zzbuy()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzecc;->zzbux()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzebt;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzebt;-><init>(Lcom/google/android/gms/internal/zzebo;Ljava/lang/String;JLcom/google/android/gms/internal/zzecc;Lcom/google/android/gms/internal/zzece;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    return-void
.end method

.method private final zzbul()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpe:Lcom/google/android/gms/internal/zzeby;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpf:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private final zzbum()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpf:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final zzbun()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnx:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final zzbuo()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbun()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_33

    move v0, v1

    :goto_f
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoj:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Scheduling connection attempt"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmoj:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmol:Lcom/google/android/gms/internal/zzecp;

    new-instance v2, Lcom/google/android/gms/internal/zzebp;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzebp;-><init>(Lcom/google/android/gms/internal/zzebo;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzecp;->zzn(Ljava/lang/Runnable;)V

    :cond_32
    return-void

    :cond_33
    move v0, v2

    goto :goto_f
.end method

.method private final zzbup()V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzecc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecc;->zzbux()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecc;->zzbuz()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_3a
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_43
    if-ge v2, v3, :cond_58

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/zzecc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecc;->zzbut()Lcom/google/android/gms/internal/zzece;

    move-result-object v1

    const-string v4, "disconnected"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/zzece;->zzbd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_58
    return-void
.end method

.method private final zzbuq()V
    .registers 9

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpf:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_74

    move v0, v1

    :goto_a
    const-string v3, "Should be connected if we\'re restoring state, but we are: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Restoring outstanding listens"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzecb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecb;->zzbuu()Lcom/google/android/gms/internal/zzebz;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Restoring listen "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_70
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzecb;)V

    goto :goto_30

    :cond_74
    move v0, v2

    goto :goto_a

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Restoring writes."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_9b
    if-ge v2, v3, :cond_ad

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/zzebo;->zzbp(J)V

    goto :goto_9b

    :cond_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeca;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeca;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeca;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeca;->zzbut()Lcom/google/android/gms/internal/zzece;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    goto :goto_b3

    :cond_d3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final zzbur()V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmop:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmop:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzebw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzebw;-><init>(Lcom/google/android/gms/internal/zzebo;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmop:Ljava/util/concurrent/ScheduledFuture;

    :cond_22
    :goto_22
    return-void

    :cond_23
    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebo;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_32
    const-string v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebo;->resume(Ljava/lang/String;)V

    goto :goto_22

    :cond_3f
    move v0, v1

    goto :goto_32
.end method

.method private final zzbus()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmoq:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzebo;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmon:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmon:J

    return-wide v0
.end method

.method private final zzcm(Z)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbul()Z

    move-result v0

    const-string v3, "Must be connected to send auth, but was: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_16
    const-string v3, "Auth token must be set to authenticate!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzebs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzebs;-><init>(Lcom/google/android/gms/internal/zzebo;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzelg;->zzqa(Ljava/lang/String;)Lcom/google/android/gms/internal/zzelg;

    move-result-object v3

    if-eqz v3, :cond_4f

    const-string v4, "cred"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzelg;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzelg;->zzcbf()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_47

    const-string v4, "authvar"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzelg;->zzcbf()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    const-string v3, "gauth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    :goto_4c
    return-void

    :cond_4d
    move v0, v2

    goto :goto_16

    :cond_4f
    const-string v3, "cred"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "auth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    goto :goto_4c
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzebo;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmon:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzebo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbuo()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzebg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnp:Lcom/google/android/gms/internal/zzebg;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzebn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzebo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbuq()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzebc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzebo;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmoo:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzebo;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoo:I

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzecp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmol:Lcom/google/android/gms/internal/zzecp;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzebo;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzebo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/zzebo;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/zzebo;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbus()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final initialize()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbuo()V

    return-void
.end method

.method public final interrupt(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Connection interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebc;->close()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    :goto_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmol:Lcom/google/android/gms/internal/zzecp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecp;->zzbvi()V

    return-void

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmol:Lcom/google/android/gms/internal/zzecp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecp;->cancel()V

    sget-object v0, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    goto :goto_31
.end method

.method public final isInterrupted(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final purgeOutstandingWrites()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzecc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecc;->zza(Lcom/google/android/gms/internal/zzecc;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecc;->zza(Lcom/google/android/gms/internal/zzecc;)Lcom/google/android/gms/internal/zzece;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzece;->zzbd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeca;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeca;->zza(Lcom/google/android/gms/internal/zzeca;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeca;->zza(Lcom/google/android/gms/internal/zzeca;)Lcom/google/android/gms/internal/zzece;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzece;->zzbd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbul()Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmor:Z

    :cond_5c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void
.end method

.method public final refreshAuthToken()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Auth token refresh requested"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebo;->interrupt(Ljava/lang/String;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebo;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public final resume(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Connection no longer interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbun()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbuo()V

    :cond_35
    return-void

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public final shutdown()V
    .registers 2

    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebo;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzece;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbum()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "oc"

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    :goto_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void

    :cond_10
    iget-object v6, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzeca;

    const-string v1, "oc"

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeca;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebp;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzece;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzebz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzebz;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unlistening on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_37
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebz;)Lcom/google/android/gms/internal/zzecb;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbul()Z

    move-result v1

    if-eqz v1, :cond_76

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "p"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecb;->zzb(Lcom/google/android/gms/internal/zzecb;)Lcom/google/android/gms/internal/zzebz;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzebz;->zzb(Lcom/google/android/gms/internal/zzebz;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzebj;->zzas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecb;->zzbuv()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_71

    const-string v3, "q"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecb;->zzbuu()Lcom/google/android/gms/internal/zzebz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebz;->zzc(Lcom/google/android/gms/internal/zzebz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "t"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    const-string v0, "n"

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    :cond_76
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzebl;Ljava/lang/Long;Lcom/google/android/gms/internal/zzece;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzebl;",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzebz;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzebz;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Listening on "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    const/4 v0, 0x1

    :goto_40
    const-string v3, "listen() called twice for same QuerySpec."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Adding listen query: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_77
    new-instance v0, Lcom/google/android/gms/internal/zzecb;

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzecb;-><init>(Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebz;Ljava/lang/Long;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzebp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmoh:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbul()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzecb;)V

    :cond_8d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void

    :cond_91
    move v0, v1

    goto :goto_40
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public final zzah(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmoe:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzebx;

    if-eqz v0, :cond_30

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzebx;->zzaj(Ljava/util/Map;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_260

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v2

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "handleServerMessage: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_94
    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    :cond_a4
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "t"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzebj;->zzbq(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v3, :cond_f8

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_f8

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_f8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "ignoring empty merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_eb
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_f2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_eb

    :cond_f8
    invoke-static {v0}, Lcom/google/android/gms/internal/zzebj;->zzpm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/google/android/gms/internal/zzebn;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    goto/16 :goto_30

    :cond_103
    const-string v2, "rm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebj;->zzpm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "t"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzebj;->zzbq(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_133
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "e"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_16b

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebj;->zzpm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_156
    if-eqz v3, :cond_16d

    invoke-static {v3}, Lcom/google/android/gms/internal/zzebj;->zzpm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_15c
    const-string v3, "m"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzecd;

    invoke-direct {v3, v5, v2, v1}, Lcom/google/android/gms/internal/zzecd;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_133

    :cond_16b
    move-object v5, v4

    goto :goto_156

    :cond_16d
    move-object v2, v4

    goto :goto_15c

    :cond_16f
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Ignoring empty range merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_196

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18f
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_196
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_18f

    :cond_19c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0, v6, v8, v7}, Lcom/google/android/gms/internal/zzebn;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_30

    :cond_1a3
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebj;->zzpm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebo;->zzat(Ljava/util/List;)V

    goto/16 :goto_30

    :cond_1bc
    const-string v2, "ac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_222

    const-string v0, "s"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Auth token revoked: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzebn;->zzcl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebc;->close()V

    goto/16 :goto_30

    :cond_222
    const-string v2, "sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_239

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzejc;->info(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_239
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Unrecognized action from server: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_253
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_25a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_253

    :cond_260
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring unknown message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_30
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzebe;)V
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Got on disconnect due to "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebe;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_27
    sget-object v0, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmor:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbup()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbun()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmnz:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmnz:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6f

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_6d

    const/4 v0, 0x1

    :goto_51
    sget-object v1, Lcom/google/android/gms/internal/zzebe;->zzmni:Lcom/google/android/gms/internal/zzebe;

    if-eq p1, v1, :cond_57

    if-eqz v0, :cond_5c

    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmol:Lcom/google/android/gms/internal/zzecp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecp;->zzbvi()V

    :cond_5c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbuo()V

    :cond_5f
    iput-wide v6, p0, Lcom/google/android/gms/internal/zzebo;->zzmnz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebn;->onDisconnect()V

    return-void

    :cond_67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :cond_6d
    move v0, v1

    goto :goto_51

    :cond_6f
    move v0, v1

    goto :goto_51
.end method

.method public final zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmor:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbum()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    :goto_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void

    :cond_12
    iget-object v6, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzeca;

    const-string v1, "o"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeca;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebp;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public final zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzece;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmor:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbum()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    :goto_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbur()V

    return-void

    :cond_12
    iget-object v6, p0, Lcom/google/android/gms/internal/zzebo;->zzmof:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzeca;

    const-string v1, "om"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeca;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebp;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public final zzc(JLjava/lang/String;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "onReady"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmnz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "handling timestamp"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "serverTimeOffset"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzebn;->zzai(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmny:Z

    if-eqz v0, :cond_ae

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmok:Lcom/google/android/gms/internal/zzebi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebi;->isPersistenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "persistence.android.enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    const-string v4, "sdk.android."

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmok:Lcom/google/android/gms/internal/zzebi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebi;->zzbue()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    const/16 v6, 0x2d

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v4, "Sending first connection stats"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v7, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_94
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fd

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "c"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s"

    new-instance v4, Lcom/google/android/gms/internal/zzebv;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzebv;-><init>(Lcom/google/android/gms/internal/zzebo;)V

    invoke-direct {p0, v3, v0, v4}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "calling restore state"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_bf
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpd:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_10f

    move v0, v1

    :goto_c6
    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Not restoring auth because token is null."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_e6
    sget-object v0, Lcom/google/android/gms/internal/zzeby;->zzmpf:Lcom/google/android/gms/internal/zzeby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbuq()V

    :goto_ed
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmny:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzebo;->zzmom:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebn;->zzbuk()V

    return-void

    :cond_f7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7c

    :cond_fd
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Not sending stats because stats are empty"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_ae

    :cond_10f
    move v0, v2

    goto :goto_c6

    :cond_111
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Restoring auth."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_122
    sget-object v0, Lcom/google/android/gms/internal/zzeby;->zzmpe:Lcom/google/android/gms/internal/zzeby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzebo;->zzcm(Z)V

    goto :goto_ed
.end method

.method public final zzpj(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebo;->zzmnw:Ljava/lang/String;

    return-void
.end method

.method public final zzpk(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_21
    const-string v0, "server_kill"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebo;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public final zzpn(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Auth token refreshed."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbul()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_19

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzebo;->zzcm(Z)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebo;->zzbul()Z

    move-result v0

    const-string v2, "Must be connected to send unauth."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :goto_29
    const-string v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "unauth"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/zzebo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzebx;)V

    goto :goto_18

    :cond_3a
    move v0, v1

    goto :goto_29
.end method

.method public final zzpo(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpc:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_37

    move v0, v1

    :goto_9
    const-string v3, "Trying to open network connection while in the wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmnv:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzebn;->zzcl(Z)V

    :cond_1b
    iput-object p1, p0, Lcom/google/android/gms/internal/zzebo;->zzmoi:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzeby;->zzmpd:Lcom/google/android/gms/internal/zzeby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmob:Lcom/google/android/gms/internal/zzeby;

    new-instance v0, Lcom/google/android/gms/internal/zzebc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebo;->zzmok:Lcom/google/android/gms/internal/zzebi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebo;->zzmne:Lcom/google/android/gms/internal/zzebk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzebo;->zzmnw:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzebo;->zzmom:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzebc;-><init>(Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Ljava/lang/String;Lcom/google/android/gms/internal/zzebd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebo;->zzmoa:Lcom/google/android/gms/internal/zzebc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebc;->open()V

    return-void

    :cond_37
    move v0, v2

    goto :goto_9
.end method
