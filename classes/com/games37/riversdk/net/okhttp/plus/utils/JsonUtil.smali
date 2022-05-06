.class public Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collection2Json(Ljava/util/Collection;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_1d

    .line 83
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "aData":Ljava/lang/Object;
    invoke-static {v0}, Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    .line 87
    .end local v0    # "aData":Ljava/lang/Object;
    :cond_1d
    return-object v1
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static map2Json(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v3, "object":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_29

    .line 62
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "key == null!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_29
    :try_start_29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_d

    .line 66
    :catch_35
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    .line 71
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_3a
    return-object v3
.end method

.method public static object2Json(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 7
    .param p0, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_27

    .line 99
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a primitive data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_27
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 102
    .local v2, "length":I
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 103
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    if-ge v0, v2, :cond_41

    .line 104
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 107
    :cond_41
    return-object v1
.end method

.method public static string2JSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 155
    :goto_7
    return-object v1

    .line 152
    :cond_8
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-object v1, v2

    goto :goto_7

    .line 153
    :catch_f
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 34
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 112
    if-nez p0, :cond_5

    move-object p0, v0

    .line 137
    .end local p0    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return-object p0

    .line 115
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_4

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_4

    .line 119
    :try_start_d
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_18

    .line 120
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;->collection2Json(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_4

    .line 121
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 122
    invoke-static {p0}, Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;->object2Json(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_4

    .line 124
    :cond_27
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_32

    .line 125
    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/games37/riversdk/net/okhttp/plus/utils/JsonUtil;->map2Json(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_4

    .line 128
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_32
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_6f

    move-result-object p0

    goto :goto_4

    .line 135
    :catch_6f
    move-exception v1

    :cond_70
    move-object p0, v0

    .line 137
    goto :goto_4
.end method
