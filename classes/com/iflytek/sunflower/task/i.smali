.class public Lcom/iflytek/sunflower/task/i;
.super Lcom/iflytek/sunflower/task/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/sunflower/OnlineConfigListener;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sunflower/task/e;-><init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V

    new-instance v0, Lcom/iflytek/sunflower/task/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sunflower/task/j;-><init>(Lcom/iflytek/sunflower/task/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/sunflower/task/i;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/sunflower/task/i;->c:Lcom/iflytek/sunflower/OnlineConfigListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/sunflower/task/i;)Lcom/iflytek/sunflower/OnlineConfigListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/sunflower/task/i;->c:Lcom/iflytek/sunflower/OnlineConfigListener;

    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .registers 6

    new-instance v1, Lcom/iflytek/sunflower/c/f;

    invoke-direct {v1}, Lcom/iflytek/sunflower/c/f;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/a;->a(Lcom/iflytek/sunflower/c/f;Landroid/content/Context;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v2, "type"

    const-string v3, "online_config"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/sunflower/c/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app.ver.code"

    const-string v3, "app.ver.code"

    invoke-virtual {v1, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app.pkg"

    const-string v3, "app.pkg"

    invoke-virtual {v1, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-static {}, Lcom/iflytek/sunflower/config/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/c/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/c/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/config/b;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/config/b;->m:Ljava/lang/String;

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Collector"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_85} :catch_86

    :goto_85
    return-object v0

    :catch_86
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "exception occur while updateOnlineConfig"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_85
.end method


# virtual methods
.method protected a()V
    .registers 6

    invoke-super {p0}, Lcom/iflytek/sunflower/task/e;->a()V

    :try_start_3
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/c/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_52

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

    const-string v2, "Collector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL_UPDATE_PARAM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/iflytek/sunflower/config/a;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/sunflower/config/a;->u:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sunflower/task/i;->a:Lcom/iflytek/sunflower/b/a$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/sunflower/b/a;->b(Lcom/iflytek/sunflower/b/a$a;)V

    :goto_51
    return-void

    :cond_52
    const-string v0, "Collector"

    const-string v1, "update online config error please check net state"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_59} :catch_5a

    goto :goto_51

    :catch_5a
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "exception occur while update online config"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/iflytek/sunflower/task/e;->a(Lorg/json/JSONObject;)V

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get online config result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1f
    const-string v0, "Yes"

    const-string v1, "config_update"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/iflytek/sunflower/config/b;->m:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->n:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->o:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_5b} :catch_9f

    :try_start_5b
    sget-object v0, Lcom/iflytek/sunflower/config/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/sunflower/config/a;->l:I

    sget-object v0, Lcom/iflytek/sunflower/config/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/iflytek/sunflower/config/a;->m:I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_75} :catch_dc
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_75} :catch_9f

    :goto_75
    :try_start_75
    sget-object v0, Lcom/iflytek/sunflower/config/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a3

    iget-object v0, p0, Lcom/iflytek/sunflower/task/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_9e} :catch_9f

    goto :goto_8b

    :catch_9f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a3
    :goto_a3
    return-void

    :cond_a4
    :try_start_a4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/iflytek/sunflower/task/i;->c:Lcom/iflytek/sunflower/OnlineConfigListener;

    if-eqz v0, :cond_b7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/i;->d:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b7
    const-string v0, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get online config params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    :cond_d4
    const-string v0, "Collector"

    const-string v1, "no online config update."

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_db} :catch_9f

    goto :goto_a3

    :catch_dc
    move-exception v0

    goto :goto_75
.end method
