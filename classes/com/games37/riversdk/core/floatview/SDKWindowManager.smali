.class public Lcom/games37/riversdk/core/floatview/SDKWindowManager;
.super Ljava/lang/Object;
.source "SDKWindowManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;


# instance fields
.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getWindowManager()Landroid/view/WindowManager;

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    if-nez v0, :cond_19

    .line 48
    const-class v1, Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    if-nez v0, :cond_18

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    invoke-direct {v0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    .line 53
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1c

    .line 55
    :cond_19
    sget-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    return-object v0

    .line 53
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_14

    .line 65
    sget-object v0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    .line 68
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 136
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 146
    :cond_4
    :goto_4
    return-void

    .line 140
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_4

    .line 143
    :catch_f
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public doApplyPermission(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;->applyPermission(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 222
    :goto_7
    return-void

    .line 219
    :catch_8
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 79
    const/16 v0, 0x33

    invoke-virtual {p0, p1, p2, v0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getLayoutParams(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams(III)Landroid/view/WindowManager$LayoutParams;
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    const/16 v4, 0x7d2

    const/4 v3, 0x0

    .line 91
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 93
    .local v0, "wmLayoutParams":Landroid/view/WindowManager$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_46

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_38

    .line 96
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 108
    :goto_18
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 109
    const/16 v1, 0x708

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 117
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 118
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 119
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 122
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    const v1, 0x10101a1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    return-object v0

    .line 97
    :cond_38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_41

    .line 99
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_18

    .line 101
    :cond_41
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_18

    .line 104
    :cond_46
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_18
.end method

.method public hasPermission(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_2d

    .line 177
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_f

    move-result v1

    .line 184
    :goto_e
    return v1

    .line 178
    :catch_f
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    sget-object v1, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPermission error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    goto :goto_e

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    if-nez p1, :cond_3

    .line 236
    :cond_2
    :goto_2
    return-void

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public showApplyPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;
    .param p4, "comfirmText"    # Ljava/lang/String;
    .param p5, "clickListener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 202
    new-instance v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;

    invoke-direct {v0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;-><init>()V

    .line 203
    .local v0, "builder":Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;
    invoke-virtual {v0, p3}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->setCancelText(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p4}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->setComfirmText(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p2}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->setContent(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, p5}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->setOnBtnClickListener(Lcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p1}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->build(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->show()V

    .line 209
    return-void
.end method

.method public updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 155
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 166
    :cond_4
    :goto_4
    return-void

    .line 159
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 160
    :catch_b
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    sget-object v1, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayout error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method
