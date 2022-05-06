.class public Lcom/games37/riversdk/core/model/DataBundle;
.super Ljava/lang/Object;
.source "DataBundle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x48de85a2554af46L


# instance fields
.field private data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    .line 25
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-nez v0, :cond_11

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    .line 28
    :cond_11
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 143
    :cond_9
    return-void
.end method

.method public getBoolData(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 87
    :cond_7
    :goto_7
    return v0

    .line 83
    :cond_8
    iget-object v1, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public getBoolData(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalutValue"    # Z

    .prologue
    .line 91
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    .end local p2    # "defalutValue":Z
    :cond_6
    :goto_6
    return p2

    .line 95
    .restart local p2    # "defalutValue":Z
    :cond_7
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_6
.end method

.method public getIntData(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 103
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    :cond_7
    :goto_7
    return v0

    .line 107
    :cond_8
    iget-object v1, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public getIntData(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalutValue"    # I

    .prologue
    .line 115
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    .end local p2    # "defalutValue":I
    :cond_6
    :goto_6
    return p2

    .line 119
    .restart local p2    # "defalutValue":I
    :cond_7
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_6
.end method

.method public getObjectData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    :cond_7
    :goto_7
    return-object v0

    .line 35
    :cond_8
    iget-object v1, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getStringData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    const-string v0, ""

    .line 51
    :goto_8
    return-object v0

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 48
    :cond_15
    const-string v0, ""

    goto :goto_8

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    const-string v0, ""

    goto :goto_8

    :cond_23
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 55
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    .end local p2    # "defalutValue":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p2

    .line 59
    .restart local p2    # "defalutValue":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method

.method public putBoolData(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    :cond_9
    return-void
.end method

.method public putBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 137
    :cond_c
    :goto_c
    return-void

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_c
.end method

.method public putIntData(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    :cond_9
    return-void
.end method

.method public putStringData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/core/model/DataBundle;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_9
    return-void
.end method
