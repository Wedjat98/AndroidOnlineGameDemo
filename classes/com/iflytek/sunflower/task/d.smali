.class public Lcom/iflytek/sunflower/task/d;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/iflytek/sunflower/b/b;

.field private b:Lorg/json/JSONObject;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/sunflower/task/d;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/iflytek/sunflower/task/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    return-void
.end method

.method private c()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private e()Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v1, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/iflytek/sunflower/config/b;->h:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lcom/iflytek/sunflower/config/a;->r:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    iget-object v1, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/iflytek/sunflower/config/a;->s:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    const/4 v0, 0x0

    goto :goto_13
.end method

.method private f()Lorg/json/JSONObject;
    .registers 6

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "type"

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    :catch_e
    move-exception v1

    const-string v2, "Collector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    move v2, v0

    :goto_12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_44

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3d

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_41

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :catch_41
    move-exception v0

    const/4 v0, 0x0

    :goto_43
    return-object v0

    :cond_44
    move-object v0, v1

    goto :goto_43
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/d;->c()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/iflytek/sunflower/task/d;->a()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_44

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appinfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    const v3, 0x8000

    invoke-static {v2, v1, v0, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_44
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/d;->d()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {p0}, Lcom/iflytek/sunflower/task/d;->b()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_82

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "hisinfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    const v3, 0x8000

    invoke-static {v2, v1, v0, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_82
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/d;->e()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_91

    :cond_90
    :goto_90
    return-void

    :cond_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c0

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_c0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "log"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/sunflower/e;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/e;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Collector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/iflytek/sunflower/b/b;

    iget-object v3, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/sunflower/b/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/sunflower/task/d;->a:Lcom/iflytek/sunflower/b/b;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->a:Lcom/iflytek/sunflower/b/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;I)V
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_104} :catch_105
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_104} :catch_10c

    goto :goto_90

    :catch_105
    move-exception v1

    iget-object v1, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_90

    :catch_10c
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90
.end method

.method public b()Lorg/json/JSONArray;
    .registers 7

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

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

    if-eqz v0, :cond_50

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

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_20

    :catch_4d
    move-exception v0

    const/4 v0, 0x0

    :goto_4f
    return-object v0

    :cond_50
    move-object v0, v1

    goto :goto_4f
.end method

.method public run()V
    .registers 5

    invoke-direct {p0}, Lcom/iflytek/sunflower/task/d;->f()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_4
    const-string v0, ""

    if-eqz v1, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/sunflower/task/d;->c:Landroid/content/Context;

    const v3, 0x8000

    invoke-static {v2, v0, v1, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/iflytek/sunflower/task/d;->a(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
