.class public Lcom/iflytek/sunflower/task/h;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/c/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sunflower/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/config/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/sunflower/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "Collector"

    const-string v1, "sharedpreferences is null"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/c/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iflytek/sunflower/config/a;->b:Ljava/lang/String;

    :try_start_18
    sget-object v1, Lcom/iflytek/sunflower/config/b;->n:Ljava/lang/String;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/iflytek/sunflower/config/a;->l:I

    sget-object v1, Lcom/iflytek/sunflower/config/b;->o:Ljava/lang/String;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/iflytek/sunflower/config/a;->m:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_49

    :goto_36
    iget-object v1, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/c/d;->a(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/iflytek/sunflower/task/h;->d(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-direct {p0, v0}, Lcom/iflytek/sunflower/task/h;->a(Landroid/content/SharedPreferences;)V

    goto :goto_f

    :cond_45
    invoke-direct {p0, v0}, Lcom/iflytek/sunflower/task/h;->c(Landroid/content/SharedPreferences;)V

    goto :goto_f

    :catch_49
    move-exception v1

    goto :goto_36
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .registers 8

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->g:Ljava/lang/Long;

    sget-object v0, Lcom/iflytek/sunflower/config/a;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/sunflower/task/h;->a(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Open a new session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/sunflower/a/b;

    invoke-direct {v0}, Lcom/iflytek/sunflower/a/b;-><init>()V

    sget-object v1, Lcom/iflytek/sunflower/config/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/sunflower/a/b;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/iflytek/sunflower/a/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_59

    sget-object v1, Lcom/iflytek/sunflower/config/b;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/sunflower/a/b;->b:J

    sget-object v1, Lcom/iflytek/sunflower/config/b;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/sunflower/a/b;->c:J

    invoke-static {p1}, Lcom/iflytek/sunflower/task/h;->e(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/sunflower/a/b;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->a(Lcom/iflytek/sunflower/a/b;)V

    :cond_59
    new-instance v0, Lcom/iflytek/sunflower/a/a;

    sget-object v1, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/a;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/sunflower/a/a;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->a(Lcom/iflytek/sunflower/a/a;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/iflytek/sunflower/config/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->b:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/a;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->c:Ljava/lang/String;

    sget-object v2, Lcom/iflytek/sunflower/config/a;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/iflytek/sunflower/task/SendTask;

    iget-object v1, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/sunflower/task/SendTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/sunflower/task/SendTask;->send()V

    :try_start_a5
    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/task/h;->b(Landroid/content/SharedPreferences;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    :goto_a8
    return-void

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a8
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .registers 15

    const/4 v12, 0x0

    const-wide/16 v10, -0x1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/iflytek/sunflower/config/b;->u:Ljava/lang/String;

    invoke-interface {p1, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v1, Lcom/iflytek/sunflower/config/b;->v:Ljava/lang/String;

    invoke-interface {p1, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v4, v6, v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_a2

    new-instance v1, Lcom/iflytek/sunflower/task/a;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v12}, Lcom/iflytek/sunflower/task/a;-><init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V

    invoke-virtual {v1}, Lcom/iflytek/sunflower/task/a;->run()V

    sget-object v1, Lcom/iflytek/sunflower/config/b;->v:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_32
    sget-object v1, Lcom/iflytek/sunflower/config/b;->w:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/iflytek/sunflower/config/b;->s:Ljava/lang/String;

    invoke-interface {p1, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v4, Lcom/iflytek/sunflower/config/b;->t:Ljava/lang/String;

    invoke-interface {p1, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v6, v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_61

    sget-object v2, Lcom/iflytek/sunflower/config/b;->j:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/sunflower/config/b;->t:Ljava/lang/String;

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_61
    sget-object v2, Lcom/iflytek/sunflower/config/b;->q:Ljava/lang/String;

    invoke-interface {p1, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v4, Lcom/iflytek/sunflower/config/b;->r:Ljava/lang/String;

    invoke-interface {p1, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v6, v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_82

    sget-object v2, Lcom/iflytek/sunflower/config/b;->k:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/sunflower/config/b;->r:Ljava/lang/String;

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_82
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_aa

    sget-object v0, Lcom/iflytek/sunflower/config/b;->i:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/sunflower/task/d;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v12, v12, v1}, Lcom/iflytek/sunflower/task/d;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/iflytek/sunflower/task/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v1

    iget-object v1, v1, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_a1
    return-void

    :cond_a2
    const-string v1, "Collector"

    const-string v2, "no need to check policy"

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_aa
    const-string v0, "Collector"

    const-string v1, "no need to call upload app "

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_b2
    const-string v0, "Collector"

    const-string v1, "no need to upload app list"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1
.end method

.method private c(Landroid/content/SharedPreferences;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/config/b;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/iflytek/sunflower/config/b;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/iflytek/sunflower/config/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extend current session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/SharedPreferences;)Z
    .registers 6

    sget-object v0, Lcom/iflytek/sunflower/config/b;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/iflytek/sunflower/config/a;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static e(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sunflower/config/b;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_13
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1a
    array-length v3, v2

    if-ge v1, v3, :cond_29

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_30

    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/h;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call onResume error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
