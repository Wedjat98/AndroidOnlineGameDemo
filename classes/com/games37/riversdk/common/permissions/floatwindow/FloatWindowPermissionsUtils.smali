.class public Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;
.super Ljava/lang/Object;
.source "FloatWindowPermissionsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FWPermissionsUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_38

    .line 101
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 102
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/MiuiUtils;->applyMiuiPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    :cond_f
    :goto_f
    return-void

    .line 103
    :cond_10
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 104
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/MeizuUtils;->applyPermission(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 105
    :cond_1a
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 106
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/HuaweiUtils;->applyPermission(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 107
    :cond_24
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 108
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/QikuUtils;->applyPermission(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 109
    :cond_2e
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsOppoRom()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 110
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/OppoUtils;->applyOppoPermission(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 113
    :cond_38
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;->commonROMPermissionApply(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3d

    .line 46
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/MiuiUtils;->checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 63
    :goto_10
    return v0

    .line 49
    :cond_11
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 51
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/MeizuUtils;->checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 52
    :cond_1c
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 54
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/HuaweiUtils;->checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 55
    :cond_27
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 57
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/QikuUtils;->checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 58
    :cond_32
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsOppoRom()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 60
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/OppoUtils;->checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 63
    :cond_3d
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;->commonROMPermissionCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method private static commonROMPermissionApply(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/MeizuUtils;->applyPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    :cond_9
    :goto_9
    return-void

    .line 128
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 129
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;->commonROMPermissionApplyInternal(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static commonROMPermissionApplyInternal(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 141
    const-class v0, Landroid/provider/Settings;

    .line 142
    .local v0, "clazz":Ljava/lang/Class;
    const-string v3, "ACTION_MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 144
    .local v1, "field":Ljava/lang/reflect/Field;
    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method private static commonROMPermissionCheck(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 75
    invoke-static {}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->checkIsMeizuRom()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 76
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/MeizuUtils;->checkFloatWindowPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 88
    :goto_b
    return v5

    .line 78
    :cond_c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 79
    .local v4, "result":Ljava/lang/Boolean;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_35

    .line 81
    :try_start_16
    const-class v2, Landroid/provider/Settings;

    .line 82
    .local v2, "clazz":Ljava/lang/Class;
    const-string v5, "canDrawOverlays"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    .local v1, "canDrawOverlays":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_3a

    .line 88
    .end local v1    # "canDrawOverlays":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    :cond_35
    :goto_35
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_b

    .line 84
    :catch_3a
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "FWPermissionsUtils"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
