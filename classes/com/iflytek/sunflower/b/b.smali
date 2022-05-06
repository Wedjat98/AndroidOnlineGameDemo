.class public Lcom/iflytek/sunflower/b/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cmd=statsdklog&logver="

    iput-object v0, p0, Lcom/iflytek/sunflower/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sunflower/b/b;->c:I

    iput-object p1, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/sunflower/b/b;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/sunflower/b/b;->c:I

    return v0
.end method

.method private a()V
    .registers 3

    const-string v0, ""

    iget v0, p0, Lcom/iflytek/sunflower/b/b;->c:I

    packed-switch v0, :pswitch_data_1a

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_7

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/iflytek/sunflower/b/b;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    :try_start_4
    iget v1, p0, Lcom/iflytek/sunflower/b/b;->c:I

    packed-switch v1, :pswitch_data_66

    goto :goto_3

    :pswitch_a
    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_3

    :catch_1c
    move-exception v0

    const-string v1, "Collector"

    const-string v2, "write to local error."

    invoke-static {v1, v2, v0}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_25
    :try_start_25
    iget-object v1, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5d

    const-string v3, "log"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    iget-object v2, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    const v3, 0x8000

    invoke-static {v2, v0, v1, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_65} :catch_1c

    goto :goto_3

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_a
        :pswitch_25
    .end packed-switch
.end method

.method static synthetic b(Lcom/iflytek/sunflower/b/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/sunflower/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/sunflower/b/b;->a()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)V
    .registers 9

    iput p2, p0, Lcom/iflytek/sunflower/b/b;->c:I

    :try_start_2
    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sunflower/c/c;->a([B)[B

    move-result-object v1

    new-instance v2, Lcom/iflytek/sunflower/b/a;

    invoke-direct {v2}, Lcom/iflytek/sunflower/b/a;-><init>()V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->a(I)V

    new-instance v3, Lcom/iflytek/sunflower/b/c;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/sunflower/b/c;-><init>(Lcom/iflytek/sunflower/b/b;Lorg/json/JSONObject;)V

    iget v4, p0, Lcom/iflytek/sunflower/b/b;->c:I

    if-nez v4, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd=statsdklog&logver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/sunflower/config/Version;->getLogVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v1}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->a(Lcom/iflytek/sunflower/b/a$a;)V

    invoke-virtual {v2}, Lcom/iflytek/sunflower/b/a;->a()V

    :goto_6b
    return-void

    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd=statsdklog&logver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/sunflower/config/Version;->getCustomLogVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v1}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->b(Lcom/iflytek/sunflower/b/a$a;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a5} :catch_a6

    goto :goto_6b

    :catch_a6
    move-exception v0

    const-string v1, "Collector"

    const-string v2, "upload error."

    invoke-static {v1, v2, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;)V

    goto :goto_6b

    :cond_b2
    :try_start_b2
    const-string v0, "Collector"

    const-string v1, "upload error please check net state"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bc} :catch_a6

    goto :goto_6b
.end method
