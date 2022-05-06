.class public Lcom/iflytek/sunflower/task/SendTask;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/iflytek/sunflower/b/b;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/task/SendTask;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/sunflower/task/SendTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/sunflower/f;->k()I

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Lcom/iflytek/sunflower/f;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sunflower/a/b;

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/e;->a(Lcom/iflytek/sunflower/a/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_19

    :cond_2b
    invoke-static {}, Lcom/iflytek/sunflower/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sunflower/a/a;

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/e;->a(Lcom/iflytek/sunflower/a/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_33

    :cond_44
    invoke-static {}, Lcom/iflytek/sunflower/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {v0}, Lcom/iflytek/sunflower/e;->a(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/e;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_56
    invoke-static {}, Lcom/iflytek/sunflower/f;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {v0}, Lcom/iflytek/sunflower/e;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/e;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_68
    invoke-static {}, Lcom/iflytek/sunflower/f;->j()V

    iget-object v0, p0, Lcom/iflytek/sunflower/task/SendTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/e;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/e;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/sunflower/task/SendTask;->send()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public declared-synchronized send()V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/iflytek/sunflower/config/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/iflytek/sunflower/config/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/sunflower/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/sunflower/config/a;->c:Ljava/lang/String;

    const-string v1, "3dd6bd20a460cc7fd6b9d168a4b61313"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "Collector"

    const-string v1, "your appkey is incorrect, please check Mainifest meta-data"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/sunflower/config/a;->d:Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_38

    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    const/4 v0, 0x1

    :try_start_28
    sput-boolean v0, Lcom/iflytek/sunflower/config/a;->d:Z

    :cond_2a
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/SendTask;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4a

    const-string v0, "Collector"

    const-string v1, "nothing to send"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_38

    goto :goto_25

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3b
    :try_start_3b
    sget-boolean v0, Lcom/iflytek/sunflower/config/a;->d:Z

    if-nez v0, :cond_2a

    const-string v0, "Collector"

    const-string v1, "your appkey is incorrect, please check Mainifest meta-data"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/sunflower/config/a;->d:Z

    goto :goto_25

    :cond_4a
    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/sunflower/b/b;

    iget-object v2, p0, Lcom/iflytek/sunflower/task/SendTask;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/b/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/sunflower/task/SendTask;->a:Lcom/iflytek/sunflower/b/b;

    iget-object v1, p0, Lcom/iflytek/sunflower/task/SendTask;->a:Lcom/iflytek/sunflower/b/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;I)V
    :try_end_75
    .catchall {:try_start_3b .. :try_end_75} :catchall_38

    goto :goto_25
.end method
