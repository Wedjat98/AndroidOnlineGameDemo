.class public Lcom/iflytek/sunflower/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-static {p0}, Lcom/iflytek/sunflower/c/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/c/f;

    move-result-object v0

    const-string v1, "lang"

    sget-object v2, Lcom/iflytek/sunflower/config/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/sunflower/config/a;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f6

    const-string v1, "deviceid"

    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    sget-object v1, Lcom/iflytek/sunflower/config/a;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "net.mac"

    sget-object v2, Lcom/iflytek/sunflower/config/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const-string v1, "appid"

    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caller.appid"

    sget-object v2, Lcom/iflytek/sunflower/config/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iflytek/sunflower/config/a;->e:Ljava/lang/String;

    const-string v1, "channel"

    sget-object v2, Lcom/iflytek/sunflower/config/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-static {}, Lcom/iflytek/sunflower/config/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/sunflower/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "header"

    invoke-static {v7, v0, v1}, Lcom/iflytek/sunflower/e;->a(ZLcom/iflytek/sunflower/c/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0}, Lcom/iflytek/sunflower/e;->d(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_98

    :try_start_93
    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_98} :catch_105

    :cond_98
    :goto_98
    invoke-static {p0}, Lcom/iflytek/sunflower/e;->c(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_a3

    :try_start_9e
    const-string v2, "age"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_a3} :catch_103

    :cond_a3
    :goto_a3
    sget-object v1, Lcom/iflytek/sunflower/config/a;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_db

    :try_start_ab
    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->d(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_db

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.########"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lng"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gpstime"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_db} :catch_101

    :cond_db
    :goto_db
    invoke-static {p0}, Lcom/iflytek/sunflower/e;->b(Landroid/content/Context;)[J

    move-result-object v1

    if-eqz v1, :cond_f5

    :try_start_e1
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f5

    const-string v2, "dntr"

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "uptr"

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_f5
    .catch Lorg/json/JSONException; {:try_start_e1 .. :try_end_f5} :catch_ff

    :cond_f5
    :goto_f5
    return-object v0

    :cond_f6
    const-string v1, "deviceid"

    sget-object v2, Lcom/iflytek/sunflower/config/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :catch_ff
    move-exception v1

    goto :goto_f5

    :catch_101
    move-exception v1

    goto :goto_db

    :catch_103
    move-exception v1

    goto :goto_a3

    :catch_105
    move-exception v1

    goto :goto_98
.end method

.method public static a(Lcom/iflytek/sunflower/a/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "sid"

    iget-object v1, p0, Lcom/iflytek/sunflower/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    iget-wide v4, p0, Lcom/iflytek/sunflower/a/a;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-nez p1, :cond_4a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_47

    :goto_1a
    :try_start_1a
    const-string v1, "boot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_2f

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_2f
    :goto_2f
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "boot"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_37
    return-object v0

    :cond_38
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_3d} :catch_3e

    goto :goto_2f

    :catch_3e
    move-exception v1

    :goto_3f
    const-string v1, "Collector"

    const-string v2, "add boot to json error"

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :catch_47
    move-exception v0

    move-object v0, p1

    goto :goto_3f

    :cond_4a
    move-object v0, p1

    goto :goto_1a
.end method

.method public static a(Lcom/iflytek/sunflower/a/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "sid"

    iget-object v1, p0, Lcom/iflytek/sunflower/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    iget-wide v4, p0, Lcom/iflytek/sunflower/a/b;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "dur"

    iget-wide v4, p0, Lcom/iflytek/sunflower/a/b;->c:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sunflower/a/b;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/iflytek/sunflower/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_29

    :catch_39
    move-exception v0

    move-object v0, p1

    :goto_3b
    const-string v1, "Collector"

    const-string v2, "add close to json error"

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-object v0

    :cond_43
    :try_start_43
    const-string v0, "page"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_75

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_4f} :catch_39

    :goto_4f
    :try_start_4f
    const-string v1, "close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_64

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_64
    :goto_64
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "close"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_42

    :catch_6d
    move-exception v1

    goto :goto_3b

    :cond_6f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_74} :catch_6d

    goto :goto_64

    :cond_75
    move-object v0, p1

    goto :goto_4f
.end method

.method public static a(Lcom/iflytek/sunflower/a/d;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    iget-wide v4, p0, Lcom/iflytek/sunflower/a/d;->f:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/iflytek/sunflower/a/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_28

    const-string v0, ""

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "label"

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    iget-object v0, p0, Lcom/iflytek/sunflower/a/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_5a

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sunflower/a/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    :cond_55
    const-string v0, "udmap"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5a
    const-string v0, "dur"

    iget-wide v4, p0, Lcom/iflytek/sunflower/a/d;->e:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v2
.end method

.method public static a(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/d;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Lcom/iflytek/sunflower/f;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_28

    :try_start_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sunflower/a/d;

    invoke-static {v0}, Lcom/iflytek/sunflower/e;->a(Lcom/iflytek/sunflower/a/d;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :catchall_25
    move-exception v0

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "convert event to Json error."

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/sunflower/f;->e()V

    const/4 v0, 0x0

    :goto_34
    return-object v0

    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_25

    :try_start_36
    sget-object v0, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3b} :catch_28

    move-object v0, v1

    goto :goto_34
.end method

.method public static a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    if-nez p1, :cond_16

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v0, "error"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_d

    :goto_c
    return-object p1

    :catch_d
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "mergeError error"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    :try_start_16
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    const-string v0, "error"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_34} :catch_35

    goto :goto_c

    :catch_35
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "mergeError error"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "header"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    const-string v1, "Collector"

    const-string v2, "package to json error"

    invoke-static {v1, v2}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static a(ZLcom/iflytek/sunflower/c/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/sunflower/c/f;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    :try_start_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

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
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "convert hashParam to json error"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    if-eqz p0, :cond_40

    move-object v0, v2

    :goto_3b
    return-object v0

    :cond_3c
    :try_start_3c
    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3f} :catch_30

    goto :goto_38

    :cond_40
    move-object v0, v3

    goto :goto_3b
.end method

.method public static b(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/c;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sunflower/a/c;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sid"

    iget-object v5, v0, Lcom/iflytek/sunflower/a/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ts"

    iget-wide v6, v0, Lcom/iflytek/sunflower/a/c;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "msg"

    iget-object v0, v0, Lcom/iflytek/sunflower/a/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_33

    goto :goto_9

    :catch_33
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "convert error to Json error."

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/sunflower/f;->f()V

    const/4 v0, 0x0

    :goto_3f
    return-object v0

    :cond_40
    move-object v0, v1

    goto :goto_3f
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object p1

    :cond_4
    if-nez p1, :cond_22

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_13
    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_3

    :catch_19
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "mergeEvent error"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_22
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_41

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_32
    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_3

    :catch_38
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "mergeEvent error"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_41
    move v0, v1

    :goto_42
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_54

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    :cond_54
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_6f

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5d
    :try_start_5d
    const-string v0, "event"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_3

    :catch_63
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "mergeEvent error"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_6f
    sget-object v3, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :goto_75
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5d

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    sget-object v5, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_75
.end method

.method public static b(Landroid/content/Context;)[J
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->e(Landroid/content/Context;)[J

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/c/a;->a:[J

    const-string v0, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dntr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",updr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    aput-wide v4, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    aput-wide v4, v0, v2

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_56

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-gtz v2, :cond_58

    :cond_56
    move-object v0, v1

    :cond_57
    :goto_57
    return-object v0

    :cond_58
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dntr"

    const-wide/16 v4, -0x2

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "uptr"

    const-wide/16 v6, -0x2

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-ltz v6, :cond_78

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-gez v6, :cond_7a

    :cond_78
    move-object v0, v1

    goto :goto_57

    :cond_7a
    const/4 v6, 0x0

    aget-wide v8, v0, v6

    sub-long v4, v8, v4

    aput-wide v4, v0, v6

    const/4 v4, 0x1

    aget-wide v6, v0, v4

    sub-long v2, v6, v2

    aput-wide v2, v0, v4

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_96

    const/4 v2, 0x1

    aget-wide v2, v0, v2
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_92} :catch_98

    cmp-long v2, v2, v10

    if-gtz v2, :cond_57

    :cond_96
    move-object v0, v1

    goto :goto_57

    :catch_98
    move-exception v0

    const-string v0, "Collector"

    const-string v2, "sdk less than 2.2 has get no traffic"

    invoke-static {v0, v2}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_57
.end method

.method public static c(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "age"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gender"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
