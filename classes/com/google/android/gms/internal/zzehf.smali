.class public final Lcom/google/android/gms/internal/zzehf;
.super Ljava/lang/Object;


# static fields
.field private static final zzmyp:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzmyq:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzmyr:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmys:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmyc:Lcom/google/android/gms/internal/zzegz;

.field private zzmyt:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzmyu:Lcom/google/android/gms/internal/zzeli;

.field private zzmyv:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzehg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyp:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyq:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmys:Lcom/google/android/gms/internal/zzehq;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzegz;Lcom/google/android/gms/internal/zzejc;Lcom/google/android/gms/internal/zzeli;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    new-instance v0, Lcom/google/android/gms/internal/zzehm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzegz;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzegz;->zzbn(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzegz;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_56

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzegz;->endTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzegz;->zzbtd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzehe;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzehe;)V

    goto :goto_39

    :catchall_56
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzegz;->endTransaction()V

    throw v0

    :cond_5d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzehq;->zzbs(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3b
    return-object v1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzehe;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzehe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzehe;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehf;Lcom/google/android/gms/internal/zzehe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    return-void
.end method

.method private final zzad(Lcom/google/android/gms/internal/zzedk;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzehf;->zzmyp:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private final zzae(Lcom/google/android/gms/internal/zzedk;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v3

    if-nez v3, :cond_17

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzehe;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_35
    return-object v1
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzehe;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_10
    move v0, v2

    :goto_11
    const-string v3, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_60

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    move-object v3, v0

    :goto_3a
    iget-object v0, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    if-eqz v0, :cond_50

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzehe;->id:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzehe;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_51

    :cond_50
    move v1, v2

    :cond_51
    invoke-static {v1}, Lcom/google/android/gms/internal/zzelt;->zzcp(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5e
    move v0, v1

    goto :goto_11

    :cond_60
    move-object v3, v0

    goto :goto_3a
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzeik;Z)V
    .registers 12

    invoke-static {p1}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v4

    if-eqz v7, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/zzehe;

    iget-wide v1, v7, Lcom/google/android/gms/internal/zzehe;->id:J

    iget-object v3, v7, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    iget-boolean v6, v7, Lcom/google/android/gms/internal/zzehe;->complete:Z

    iget-boolean v7, v7, Lcom/google/android/gms/internal/zzehe;->zziyi:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    new-instance v8, Lcom/google/android/gms/internal/zzehe;

    iget-wide v1, v0, Lcom/google/android/gms/internal/zzehe;->id:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzehe;->zzmyo:J

    iget-boolean v6, v0, Lcom/google/android/gms/internal/zzehe;->complete:Z

    move-object v0, v8

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    move-object v0, v8

    :goto_2d
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    return-void

    :cond_31
    new-instance v0, Lcom/google/android/gms/internal/zzehe;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    const/4 v6, 0x0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    goto :goto_2d
.end method

.method static synthetic zzbxv()Lcom/google/android/gms/internal/zzehq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    return-object v0
.end method

.method private static zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p0

    :cond_e
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegt;)Lcom/google/android/gms/internal/zzeha;
    .registers 15

    const/4 v12, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegt;->zzbxp()F

    move-result v5

    sub-float/2addr v2, v5

    long-to-float v5, v0

    mul-float/2addr v2, v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegt;->zzbxq()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v6, v0, v6

    new-instance v1, Lcom/google/android/gms/internal/zzeha;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeha;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Pruning old queries.  Prunable: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Count to prune: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v12, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5d
    new-instance v0, Lcom/google/android/gms/internal/zzehl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzehl;-><init>(Lcom/google/android/gms/internal/zzehf;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    :goto_66
    int-to-long v8, v2

    cmp-long v0, v8, v6

    if-gez v0, :cond_b5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzeha;->zzx(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzehe;->id:J

    invoke-interface {v8, v10, v11}, Lcom/google/android/gms/internal/zzegz;->zzbm(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzehm;->zzai(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    :cond_b1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_66

    :cond_b5
    long-to-int v0, v6

    move-object v2, v1

    move v1, v0

    :goto_b8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzeha;->zzy(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b8

    :cond_d2
    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmys:Lcom/google/android/gms/internal/zzehq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_100

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unprunable queries: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v12, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_104
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzeha;->zzy(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v2

    goto :goto_104

    :cond_11b
    return-object v2
.end method

.method public final zzaa(Lcom/google/android/gms/internal/zzedk;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzae(Lcom/google/android/gms/internal/zzedk;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzegz;->zze(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_26

    sget-object v4, Lcom/google/android/gms/internal/zzehf;->zzmyp:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzehq;->zzbs(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_56
    return-object v2
.end method

.method public final zzab(Lcom/google/android/gms/internal/zzedk;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzad(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/zzehe;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    iget-object v4, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    :goto_24
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    :cond_27
    return-void

    :cond_28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehe;->zzbxt()Lcom/google/android/gms/internal/zzehe;

    move-result-object v0

    goto :goto_24
.end method

.method public final zzac(Lcom/google/android/gms/internal/zzedk;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzehf;->zzmyq:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final zzbxu()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzeik;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzeik;Z)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzeik;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzeik;Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzeik;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehe;->zzbxt()Lcom/google/android/gms/internal/zzehe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    :cond_15
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzeik;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zzad(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_d

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_d

    :cond_3e
    move v0, v2

    goto :goto_d
.end method

.method public final zzz(Lcom/google/android/gms/internal/zzedk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzehk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzehk;-><init>(Lcom/google/android/gms/internal/zzehf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzehp;)V

    return-void
.end method
