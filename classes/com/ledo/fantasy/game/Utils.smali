.class public Lcom/ledo/fantasy/game/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCurMainRFileDirMark()Ljava/lang/String;
    .registers 1

    .prologue
    .line 9
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 10
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method private static getNestedClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 19
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-lt v1, v2, :cond_a

    .line 24
    const/4 v2, 0x0

    :goto_9
    return-object v2

    .line 20
    :cond_a
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 21
    aget-object v2, v0, v1

    goto :goto_9

    .line 19
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static getResourceId(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 7
    .param p1, "idText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "idTextList":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_7
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_1b

    .line 35
    :try_start_c
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_19} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_19} :catch_2f

    move-result v4

    .line 44
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1a
    return v4

    .line 31
    :cond_1b
    aget-object v4, v3, v2

    invoke-static {p0, v4}, Lcom/ledo/fantasy/game/Utils;->getNestedClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 37
    :catch_24
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_28
    const/4 v4, 0x0

    goto :goto_1a

    .line 39
    :catch_2a
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2f
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28
.end method
