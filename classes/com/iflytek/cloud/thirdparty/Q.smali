.class public Lcom/iflytek/cloud/thirdparty/Q;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/iflytek/cloud/thirdparty/Q;


# instance fields
.field protected a:Ljava/lang/Object;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/cloud/thirdparty/af;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/cloud/util/FileDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/iflytek/cloud/thirdparty/Z;

.field private g:Landroid/content/Context;

.field private h:Lcom/iflytek/cloud/thirdparty/M;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Lcom/iflytek/cloud/thirdparty/aa;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->f:Lcom/iflytek/cloud/thirdparty/Z;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->h:Lcom/iflytek/cloud/thirdparty/M;

    const-string v0, "download_uri"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->i:Ljava/lang/String;

    const-string v0, "file_path"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->j:Ljava/lang/String;

    const-string v0, "file_md5"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->a:Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/Q$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/Q$1;-><init>(Lcom/iflytek/cloud/thirdparty/Q;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->l:Lcom/iflytek/cloud/thirdparty/aa;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/Q;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->h:Lcom/iflytek/cloud/thirdparty/M;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 10

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/Q;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "download_uri"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "file_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "file_md5"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v4

    move-wide v0, v2

    :goto_4f
    return-wide v0

    :cond_50
    const-wide/16 v0, 0x0

    monitor-exit v4

    goto :goto_4f

    :catchall_54
    move-exception v0

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/Q;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/Q;->b:Lcom/iflytek/cloud/thirdparty/Q;

    if-nez v0, :cond_b

    new-instance v0, Lcom/iflytek/cloud/thirdparty/Q;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/Q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/Q;->b:Lcom/iflytek/cloud/thirdparty/Q;

    :cond_b
    sget-object v0, Lcom/iflytek/cloud/thirdparty/Q;->b:Lcom/iflytek/cloud/thirdparty/Q;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/Q;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/Q;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/Q;)Lcom/iflytek/cloud/thirdparty/M;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->h:Lcom/iflytek/cloud/thirdparty/M;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/Q;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/Q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Q;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1f

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Q;->d:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    :goto_1e
    return v0

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p4, :cond_2e

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Q;->d:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    new-instance v2, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v2}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    const-string v3, "download_uri"

    invoke-virtual {v2, v3, p1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_path"

    invoke-virtual {v2, v3, p2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_md5"

    invoke-virtual {v2, v3, p3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/Q;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Q;->h:Lcom/iflytek/cloud/thirdparty/M;

    invoke-virtual {v2, p1, v5}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/iflytek/cloud/thirdparty/Z;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/Q;->g:Landroid/content/Context;

    invoke-direct {v3, v0, v1, v6, v4}, Lcom/iflytek/cloud/thirdparty/Z;-><init>(JILandroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/Q;->f:Lcom/iflytek/cloud/thirdparty/Z;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->f:Lcom/iflytek/cloud/thirdparty/Z;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Q;->l:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/Z;->a(Lcom/iflytek/cloud/thirdparty/aa;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Q;->f:Lcom/iflytek/cloud/thirdparty/Z;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move v0, v6

    goto :goto_1e
.end method
