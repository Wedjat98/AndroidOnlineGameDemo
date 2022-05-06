.class public Lcom/games37/riversdk/common/permissions/floatwindow/rom/OppoUtils;
.super Ljava/lang/Object;
.source "OppoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyOppoPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.coloros.safecenter"

    const-string v4, "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 69
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_19
    return-void

    .line 66
    :catch_1a
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public static checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    .line 31
    const/16 v1, 0x18

    invoke-static {p0, v1, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/OppoUtils;->checkOp(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    .line 33
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x1

    goto :goto_c
.end method

.method private static checkOp(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 38
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .local v4, "version":I
    const/16 v5, 0x13

    if-lt v4, v5, :cond_5e

    .line 40
    const-string v5, "appops"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 42
    .local v2, "manager":Landroid/app/AppOpsManager;
    :try_start_10
    const-class v0, Landroid/app/AppOpsManager;

    .line 43
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "checkOp"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 44
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    aput-object p2, v5, v8

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4b} :catch_52

    move-result v5

    if-nez v5, :cond_50

    move v5, v6

    .line 51
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "manager":Landroid/app/AppOpsManager;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_4f
    return v5

    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v2    # "manager":Landroid/app/AppOpsManager;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_50
    move v5, v7

    .line 44
    goto :goto_4f

    .line 45
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_52
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "OppoUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "manager":Landroid/app/AppOpsManager;
    :goto_5c
    move v5, v7

    .line 51
    goto :goto_4f

    .line 49
    :cond_5e
    const-string v5, "OppoUtils"

    const-string v6, "Below API 19 cannot invoke!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method
