.class public Lcom/iflytek/cloud/thirdparty/aM;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/aM;


# instance fields
.field private b:Lcom/iflytek/cloud/thirdparty/aU;

.field private c:Lcom/iflytek/cloud/thirdparty/aJ;

.field private d:Landroid/content/Context;

.field private e:Lcom/iflytek/cloud/thirdparty/aN;

.field private f:Lcom/iflytek/cloud/thirdparty/aR;

.field private g:Lcom/iflytek/cloud/thirdparty/aK;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->c:Lcom/iflytek/cloud/thirdparty/aJ;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aP;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/aP;-><init>(Lcom/iflytek/cloud/thirdparty/aM;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->g:Lcom/iflytek/cloud/thirdparty/aK;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aU;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/aU;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->b:Lcom/iflytek/cloud/thirdparty/aU;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aR;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/aR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->f:Lcom/iflytek/cloud/thirdparty/aR;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aN;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->b:Lcom/iflytek/cloud/thirdparty/aU;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/aN;-><init>(Lcom/iflytek/cloud/thirdparty/aU;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load settings: pkgRun="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aN;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " periodRun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aN;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " periodUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aN;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/aM;
    .registers 3

    const-class v1, Lcom/iflytek/cloud/thirdparty/aM;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/aM;->a:Lcom/iflytek/cloud/thirdparty/aM;

    if-nez v0, :cond_e

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aM;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/aM;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aM;->a:Lcom/iflytek/cloud/thirdparty/aM;

    :cond_e
    sget-object v0, Lcom/iflytek/cloud/thirdparty/aM;->a:Lcom/iflytek/cloud/thirdparty/aM;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/aM;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/aM;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7

    if-nez p2, :cond_25

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/aN;->c(J)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    const-string v1, "get config success"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/aM;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/aL;->a(Landroid/content/Context;)V

    :goto_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->c:Lcom/iflytek/cloud/thirdparty/aJ;

    return-void

    :cond_25
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get config error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private b(Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_8
    const-string v0, "LaunchSettings"

    const-string v1, "loadJson empty."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void

    :cond_10
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    :try_start_15
    const-string v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v0, "updateperiod"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "launch"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "runpackage"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_35
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5d

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v6, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_5d
    const-string v0, "runperiod"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0, v6}, Lcom/iflytek/cloud/thirdparty/aN;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/aN;->a(J)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/aN;->b(J)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parse json updateperiod:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " runperiod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " runpackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_9a} :catch_9c

    goto/16 :goto_f

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse json error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method private d()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/aM;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/aM;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&p="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->f:Lcom/iflytek/cloud/thirdparty/aR;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aR;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->f:Lcom/iflytek/cloud/thirdparty/aR;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aR;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_27

    :cond_25
    const-string v0, "null"

    :cond_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ua="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",appid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a4

    :cond_3f
    const-string v0, "null"

    :goto_41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sdkver=2.0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/aS;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v2

    :goto_72
    const/16 v4, 0x8

    if-ge v0, v4, :cond_89

    aget-char v4, v3, v0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    add-int/2addr v5, v0

    aget-char v5, v3, v5

    aput-char v5, v3, v0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    add-int/2addr v5, v0

    aput-char v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_8f
    array-length v2, v3

    if-ge v0, v2, :cond_9a

    aget-char v2, v3, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    :cond_9a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a4
    move-object v0, v1

    goto :goto_41
.end method

.method private f()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aN;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/aN;->c(J)V

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aN;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/aN;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_6d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->c:Lcom/iflytek/cloud/thirdparty/aJ;

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://hxqd.openspeech.cn/launchconfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/aM;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/thirdparty/aJ;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aM;->g:Lcom/iflytek/cloud/thirdparty/aK;

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/aJ;-><init>(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/aK;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->c:Lcom/iflytek/cloud/thirdparty/aJ;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->c:Lcom/iflytek/cloud/thirdparty/aJ;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aJ;->start()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    const-string v2, "check update start get config "

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_64
    return-void

    :cond_65
    const-string v0, "LaunchSettings"

    const-string v1, "mGetThread running."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_6d
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check update interval="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ret=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_64
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/aN;->d(J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "appid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0, p2}, Lcom/iflytek/cloud/thirdparty/aN;->a(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    const-string v0, "LaunchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unkown key ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aT;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    if-nez p1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->c()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v0, 0x1

    goto :goto_b

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public b()Z
    .registers 9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aN;->e()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/aN;->d(J)V

    :cond_1e
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_41

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aN;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_41

    const/4 v0, 0x1

    :cond_41
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aM;->d:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check launch interval="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " period="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/aN;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/aT;->a(Landroid/content/Context;Ljava/lang/String;)V

    return v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aM;->e:Lcom/iflytek/cloud/thirdparty/aN;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aN;->a()J

    move-result-wide v0

    return-wide v0
.end method
