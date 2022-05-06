.class public Lcom/iflytek/sunflower/task/a;
.super Lcom/iflytek/sunflower/task/e;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sunflower/task/e;-><init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V

    iput-object p1, p0, Lcom/iflytek/sunflower/task/a;->b:Landroid/content/Context;

    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lcom/iflytek/sunflower/c/f;

    invoke-direct {v0}, Lcom/iflytek/sunflower/c/f;-><init>()V

    iget-object v1, p0, Lcom/iflytek/sunflower/task/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/a;->a(Lcom/iflytek/sunflower/c/f;Landroid/content/Context;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v1, "type"

    const-string v2, "app_list"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/iflytek/sunflower/task/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/c/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pver"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Collector"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_32

    :goto_31
    return-object v0

    :catch_32
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "exception occur while upload app list"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_31
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/iflytek/sunflower/task/e;->a()V

    :try_start_3
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/sunflower/task/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/c/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sunflower/c/c;->a([B)[B

    move-result-object v0

    new-instance v1, Lcom/iflytek/sunflower/b/a;

    invoke-direct {v1}, Lcom/iflytek/sunflower/b/a;-><init>()V

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lcom/iflytek/sunflower/b/a;->b(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/sunflower/b/a;->a(I)V

    const-string v2, "http://data.openspeech.cn/index.php/clientrequest/clientcollect/isCollect"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sunflower/task/a;->a:Lcom/iflytek/sunflower/b/a$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/sunflower/b/a;->b(Lcom/iflytek/sunflower/b/a$a;)V

    :goto_37
    return-void

    :cond_38
    const-string v0, "Collector"

    const-string v1, "upload app list error, please check net state"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_40

    goto :goto_37

    :catch_40
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "exception occur while upload app list"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 10

    const/high16 v4, 0x45610000    # 3600.0f

    invoke-super {p0, p1}, Lcom/iflytek/sunflower/task/e;->a(Lorg/json/JSONObject;)V

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get app list config result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/sunflower/config/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v4

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v0, Lcom/iflytek/sunflower/config/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v4

    float-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v0, Lcom/iflytek/sunflower/config/b;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v4

    float-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "yes"

    sget-object v5, Lcom/iflytek/sunflower/config/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_69
    iget-object v4, p0, Lcom/iflytek/sunflower/task/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/iflytek/sunflower/config/b;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->u:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
