.class public Lcom/games37/riversdk/core/model/DataMap;
.super Ljava/util/HashMap;
.source "DataMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15f5cdfc0fee23eL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    :cond_7
    :goto_7
    return-object v0

    .line 24
    :cond_8
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getStringData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    const-string v0, ""

    .line 37
    :goto_8
    return-object v0

    .line 34
    :cond_9
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 35
    const-string v0, ""

    goto :goto_8

    .line 37
    :cond_12
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, ""

    goto :goto_8

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalutValue"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    .end local p2    # "defalutValue":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p2

    .line 44
    .restart local p2    # "defalutValue":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method

.method public putData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/model/DataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public putMap(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 59
    :cond_8
    :goto_8
    return-void

    .line 58
    :cond_9
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/model/DataMap;->putAll(Ljava/util/Map;)V

    goto :goto_8
.end method
