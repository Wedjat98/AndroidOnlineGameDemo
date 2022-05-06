.class public Lcom/yunding/analysis/b/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_12

    check-cast p0, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_12
    instance-of v2, p0, Ljava/util/Date;

    if-eqz v2, :cond_24

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_24
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_36

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_36
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_46

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4

    :cond_46
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_54

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_54
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_62

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_62
    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_74

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static d(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0}, Lcom/yunding/analysis/b/g;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
