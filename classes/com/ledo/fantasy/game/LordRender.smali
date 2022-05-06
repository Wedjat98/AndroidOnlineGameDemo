.class public Lcom/ledo/fantasy/game/LordRender;
.super Ljava/lang/Object;
.source "LordRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mGpuName:Ljava/lang/String;


# instance fields
.field private bHideLaunchView:Ljava/lang/Boolean;

.field private bInitGameOver:Ljava/lang/Boolean;

.field protected mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "LordRender"

    sput-object v0, Lcom/ledo/fantasy/game/LordRender;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ledo/fantasy/game/LordRender;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    .line 28
    return-void
.end method


# virtual methods
.method public getGPUName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/ledo/fantasy/game/LordRender;->mGpuName:Ljava/lang/String;

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .registers 10
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    .line 121
    iget-object v2, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 123
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-lt v1, v0, :cond_17

    .line 129
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_16
    return-void

    .line 126
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_17
    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aget v3, p2, v1

    float-to-int v3, v3

    aget v4, p3, v1

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/ledo/fantasy/game/GameJNILib;->touchEnd(IIII)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public handleActionDown(IFFI)V
    .registers 8
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "touchnum"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    add-int/lit8 v0, p1, 0x1

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-static {v0, v1, v2, p4}, Lcom/ledo/fantasy/game/GameJNILib;->touchBegin(IIII)V

    .line 112
    :cond_f
    return-void
.end method

.method public handleActionMove([I[F[FI)V
    .registers 10
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F
    .param p4, "touchnum"    # I

    .prologue
    .line 132
    iget-object v2, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 134
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-lt v1, v0, :cond_17

    .line 140
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_16
    return-void

    .line 137
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_17
    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aget v3, p2, v1

    float-to-int v3, v3

    aget v4, p3, v1

    float-to-int v4, v4

    invoke-static {v2, v3, v4, p4}, Lcom/ledo/fantasy/game/GameJNILib;->touchMove(IIII)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public handleActionUp(IFFI)V
    .registers 8
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F
    .param p4, "touchnum"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 116
    add-int/lit8 v0, p1, 0x1

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-static {v0, v1, v2, p4}, Lcom/ledo/fantasy/game/GameJNILib;->touchEnd(IIII)V

    .line 117
    :cond_f
    return-void
.end method

.method public handleDeleteBackward()V
    .registers 1

    .prologue
    .line 159
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->nativeDeleteBackward()V

    .line 160
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .registers 2
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/ledo/fantasy/game/GameJNILib;->nativeInsertText(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public handleKeyDown(I)V
    .registers 3
    .param p1, "pKeyCode"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    invoke-static {p1}, Lcom/ledo/fantasy/game/GameJNILib;->nativeKeyDown(I)V

    .line 145
    :cond_b
    return-void
.end method

.method public handleMotionController(FFFFFF)V
    .registers 8
    .param p1, "ls_x"    # F
    .param p2, "ls_y"    # F
    .param p3, "rs_x"    # F
    .param p4, "rs_y"    # F
    .param p5, "lt_triger"    # F
    .param p6, "rt_triger"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    invoke-static/range {p1 .. p6}, Lcom/ledo/fantasy/game/GameJNILib;->nativehandleMotionController(FFFFFF)V

    .line 151
    :cond_b
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v9, 0x1

    .line 34
    sget-boolean v6, Lcom/ledo/fantasy/game/GameApp;->s_GameJniInited:Z

    if-nez v6, :cond_75

    .line 37
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApkAssetsOutDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ledo/fantasy/game/GameJNILib;->setAssetsPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameJNILib;->setWritablePath(Ljava/lang/String;)V

    .line 42
    const-string v6, "EVENT_INITGAME_START"

    invoke-static {v6}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 48
    iget-object v6, p0, Lcom/ledo/fantasy/game/LordRender;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iget v7, p0, Lcom/ledo/fantasy/game/LordRender;->mWidth:I

    iget v8, p0, Lcom/ledo/fantasy/game/LordRender;->mHeight:I

    invoke-static {v6, v7, v8}, Lcom/ledo/fantasy/game/GameJNILib;->initGame(Landroid/content/res/AssetManager;II)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/ledo/fantasy/game/LordRender;->bInitGameOver:Ljava/lang/Boolean;

    .line 54
    const-string v6, "EVENT_INITGAME_END"

    invoke-static {v6}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 55
    sput-boolean v9, Lcom/ledo/fantasy/game/GameApp;->s_GameJniInited:Z

    .line 56
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/ledo/fantasy/game/LordRender;->bHideLaunchView:Ljava/lang/Boolean;

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/soundsetting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "strPathSoundsetting":Ljava/lang/String;
    :try_start_55
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "fil":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_75

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 67
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v4, "s":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 71
    .local v3, "prop":Ljava/util/Properties;
    const-string v6, "android"

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_75} :catch_98

    .line 80
    .end local v1    # "fil":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "prop":Ljava/util/Properties;
    .end local v4    # "s":Ljava/io/FileOutputStream;
    .end local v5    # "strPathSoundsetting":Ljava/lang/String;
    :cond_75
    :goto_75
    sget-boolean v6, Lcom/ledo/fantasy/game/GameApp;->s_GameJniInited:Z

    if-eqz v6, :cond_91

    .line 82
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->tick()V

    .line 84
    iget-object v6, p0, Lcom/ledo/fantasy/game/LordRender;->bHideLaunchView:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_91

    .line 86
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ledo/fantasy/game/GameApp;->onGameLaunched()V

    .line 87
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/ledo/fantasy/game/LordRender;->bHideLaunchView:Ljava/lang/Boolean;

    .line 90
    :cond_91
    iget v6, p0, Lcom/ledo/fantasy/game/LordRender;->mCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ledo/fantasy/game/LordRender;->mCount:I

    .line 91
    return-void

    .line 75
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v5    # "strPathSoundsetting":Ljava/lang/String;
    :catch_98
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 94
    iput p2, p0, Lcom/ledo/fantasy/game/LordRender;->mWidth:I

    .line 95
    iput p3, p0, Lcom/ledo/fantasy/game/LordRender;->mHeight:I

    .line 96
    sget-object v0, Lcom/ledo/fantasy/game/LordRender;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceChanged(%d, %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 102
    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/LordRender;->mGpuName:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    sget-object v1, Lcom/ledo/fantasy/game/LordRender;->mGpuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->setGPUName(Ljava/lang/String;)V

    .line 104
    return-void
.end method
