.class public Lcom/ledo/fantasy/game/GameJNILib;
.super Ljava/lang/Object;
.source "GameJNILib.java"


# static fields
.field private static libLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ledo/fantasy/game/GameJNILib;->libLoaded:Z

    .line 14
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->loadLib()V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Destory()V
.end method

.method public static native OnDownloadURLFailed(Ljava/lang/String;I)V
.end method

.method public static native OnDownloadURLSuc(Ljava/lang/String;I)V
.end method

.method public static native OnQiniuDownloadFail(Ljava/lang/String;I)V
.end method

.method public static native OnQiniuDownloadSeccess(Ljava/lang/String;I)V
.end method

.method public static native OnQiniuUploadResult(Ljava/lang/String;Z)V
.end method

.method public static native OnTakePhotoFinish(Ljava/lang/String;)V
.end method

.method public static native SetDownLoadServerUrl(Ljava/lang/String;)V
.end method

.method public static native SetMemory(J)V
.end method

.method public static native SetPhoneinformation(IILjava/lang/String;)V
.end method

.method public static native enableEnterButton()V
.end method

.method public static native initGame(Landroid/content/res/AssetManager;II)Z
.end method

.method public static loadLib()V
    .registers 7

    .prologue
    .line 18
    sget-boolean v5, Lcom/ledo/fantasy/game/GameJNILib;->libLoaded:Z

    if-nez v5, :cond_61

    .line 19
    const-string v5, "fmod"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    const-string v5, "fmodstudio"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->gameso_name:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "libName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "soName":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->gameso_private_path:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "soPrivatePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAppPrivateDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "fullPrivatePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, "so":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 27
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 31
    :goto_5e
    const/4 v5, 0x1

    sput-boolean v5, Lcom/ledo/fantasy/game/GameJNILib;->libLoaded:Z

    .line 33
    :cond_61
    return-void

    .line 29
    :cond_62
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_5e
.end method

.method public static native nativeDeleteBackward()V
.end method

.method public static native nativeInsertText(Ljava/lang/String;)V
.end method

.method public static native nativeKeyDown(I)V
.end method

.method public static native nativeSetEditTextDialogResult(Ljava/lang/String;)V
.end method

.method public static native nativehandleMotionController(FFFFFF)V
.end method

.method public static native onArcVoiceInitFailed()V
.end method

.method public static native onArcVoiceInitFinish()V
.end method

.method public static native onBatteryPowerChange(I)V
.end method

.method public static native onFileDownLoadResult(Ljava/lang/String;Z)V
.end method

.method public static native onFileUploadResult(Ljava/lang/String;Z)V
.end method

.method public static native onFinishPlayVoiceResult(Z)V
.end method

.method public static native onIFlyTekRecognizedResult(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native onPause()V
.end method

.method public static native onResume()V
.end method

.method public static native onStartRecordResult(Z)V
.end method

.method public static native onStopPlayVoiceResult(Z)V
.end method

.method public static native onStopRecordResult(Z)V
.end method

.method public static native resetWindowSize(II)V
.end method

.method public static native setAssetsPath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setUCVipState(I)V
.end method

.method public static native setWritablePath(Ljava/lang/String;)V
.end method

.method public static native tick()V
.end method

.method public static native touchBegin(IIII)V
.end method

.method public static native touchEnd(IIII)V
.end method

.method public static native touchMove(IIII)V
.end method
