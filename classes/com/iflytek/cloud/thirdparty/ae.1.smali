.class public Lcom/iflytek/cloud/thirdparty/ae;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/ae;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/content/SharedPreferences;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Lcom/iflytek/cloud/thirdparty/U$a;

.field private p:Lcom/iflytek/cloud/thirdparty/U$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->f:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->g:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->h:Z

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->i:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->j:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->k:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->l:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->m:J

    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->n:J

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ae$3;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ae$3;-><init>(Lcom/iflytek/cloud/thirdparty/ae;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->o:Lcom/iflytek/cloud/thirdparty/U$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ae$4;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ae$4;-><init>(Lcom/iflytek/cloud/thirdparty/ae;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->p:Lcom/iflytek/cloud/thirdparty/U$a;

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iflytek_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v1, "is_collect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->h:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v1, "ti_request"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->i:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v1, "ti_app_list"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->n:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->j:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v1, "list_app_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->l:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v1, "ti_app_active"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->n:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->k:J

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v1, "active_app_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->m:J

    :cond_91
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ae;J)J
    .registers 4

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/ae;->i:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ae;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    if-nez v0, :cond_b

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ae;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ae;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    :cond_b
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "header"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_10

    :goto_f
    return-object v1

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private static a(ZLcom/iflytek/cloud/thirdparty/af;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/af;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    :try_start_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    :goto_34
    if-eqz p0, :cond_3c

    move-object v0, v2

    :goto_37
    return-object v0

    :cond_38
    :try_start_38
    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_30

    goto :goto_34

    :cond_3c
    move-object v0, v3

    goto :goto_37
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ae;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ae;->e()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/V;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/P;->b([B)[B

    move-result-object v1

    new-instance v2, Lcom/iflytek/cloud/thirdparty/U;

    invoke-direct {v2}, Lcom/iflytek/cloud/thirdparty/U;-><init>()V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/U;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/U;->a(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd=statsdklog&logver=1.0.2&size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://scs.openspeech.cn/scs"

    invoke-virtual {v2, v3, v0, v1}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->p:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/thirdparty/U$a;)V

    :goto_43
    return-void

    :cond_44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_47} :catch_48

    goto :goto_43

    :catch_48
    move-exception v0

    iput-boolean v5, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ae;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/ae;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ae;J)J
    .registers 4

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/ae;->j:J

    return-wide p1
.end method

.method private static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/L;->b(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/ah;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V

    const-string v1, "appid"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unique_id"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/X;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "src"

    const-string v2, "msc"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-static {}, Lcom/iflytek/cloud/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logtime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "header"

    invoke-static {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(ZLcom/iflytek/cloud/thirdparty/af;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_5d
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.########"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v3

    const-string v4, "msc.lat"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lng"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v3

    const-string v4, "msc.lng"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_8c} :catch_8d

    :goto_8c
    return-object v1

    :catch_8d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    goto :goto_8c
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ae;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ae;->g()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ae;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ae;J)J
    .registers 4

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/ae;->k:J

    return-wide p1
.end method

.method static synthetic c()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ae;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ae;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z

    return p1
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->i:J

    return-wide v0
.end method

.method private d()Z
    .registers 11

    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v2, "ti_request"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    const-string v4, "request_time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_25

    sub-long v4, v6, v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_23

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22

    :catch_25
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->j:J

    return-wide v0
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pver"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "app_list"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "src"

    const-string v2, "msc"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CollectInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/V;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/P;->b([B)[B

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/thirdparty/U;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/U;-><init>()V

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/U;->b(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/U;->a(I)V

    const-string v2, "http://data.openspeech.cn/index.php/clientrequest/clientcollect/isCollect"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->o:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/thirdparty/U$a;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_72
    return-void

    :cond_73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_76} :catch_77

    goto :goto_72

    :catch_77
    move-exception v0

    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    goto :goto_72
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->k:J

    return-wide v0
.end method

.method private f()Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->h:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return v2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/ae;->l:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lcom/iflytek/cloud/thirdparty/ae;->j:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_31

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->f:Z

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/ae;->m:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/ae;->k:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_33

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->g:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->f:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->g:Z

    if-eqz v0, :cond_6

    :cond_2f
    move v2, v1

    goto :goto_6

    :cond_31
    move v0, v2

    goto :goto_19

    :cond_33
    move v0, v2

    goto :goto_25
.end method

.method private g()V
    .registers 9

    const-wide/16 v6, 0x3e8

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ae;->f:Z

    if-eqz v1, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->l:J

    const-string v1, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastListAppTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->l:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list_app_time"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->l:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_34
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ae;->g:Z

    if-eqz v1, :cond_60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->m:J

    const-string v1, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastActiveAppTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/ae;->m:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "active_app_time"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ae;->m:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ae;->f:Z

    if-eqz v1, :cond_88

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ae;->h()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_88

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appinfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_88
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ae;->g:Z

    if-eqz v1, :cond_a8

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ae;->i()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_a8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "hisinfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "log"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ae;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CollectInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Lorg/json/JSONObject;)V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_c8} :catch_c9

    :goto_c8
    return-void

    :catch_c9
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    goto :goto_c8
.end method

.method private h()Lorg/json/JSONArray;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_16
    if-ge v2, v5, :cond_47

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_3d

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3d} :catch_41

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_46
    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_46
.end method

.method private i()Lorg/json/JSONArray;
    .registers 7

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->b:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_20

    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_52
    return-object v0

    :cond_53
    move-object v0, v1

    goto :goto_52
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ae;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/ae$1;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/thirdparty/ae$1;-><init>(Lcom/iflytek/cloud/thirdparty/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->d:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1e

    goto :goto_5
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/ae$2;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/thirdparty/ae$2;-><init>(Lcom/iflytek/cloud/thirdparty/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->e:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1e

    goto :goto_5
.end method
