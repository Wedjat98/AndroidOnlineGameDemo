.class public Lcom/ledo/fantasy/game/IcefireHelper;
.super Ljava/lang/Object;
.source "IcefireHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;
    }
.end annotation


# static fields
.field private static sAccelerometerEnabled:Z

.field private static sAssetManager:Landroid/content/res/AssetManager;

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

.field private static sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

.field private static sIcefireHelperListener:Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;

.field private static sInited:Z

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ledo/fantasy/game/IcefireHelper;->sInited:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Musicend()V
    .registers 1

    .prologue
    .line 221
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->end()V

    .line 222
    return-void
.end method

.method public static Soundend()V
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireSound;->end()V

    .line 218
    return-void
.end method

.method public static disableAccelerometer()V
    .registers 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ledo/fantasy/game/IcefireHelper;->sAccelerometerEnabled:Z

    .line 129
    return-void
.end method

.method public static enableAccelerometer()V
    .registers 1

    .prologue
    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ledo/fantasy/game/IcefireHelper;->sAccelerometerEnabled:Z

    .line 119
    return-void
.end method

.method public static end()V
    .registers 1

    .prologue
    .line 212
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->end()V

    .line 213
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireSound;->end()V

    .line 214
    return-void
.end method

.method private static getAbsolutePathOnExternalStorage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicVolume()F
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .registers 1

    .prologue
    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getEffectsVolume()F
    .registers 1

    .prologue
    .line 188
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static getIcefireCacheDirectory()Ljava/lang/String;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getIcefirePackageName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;)V
    .registers 4
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pIcefireHelperListener"    # Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;

    .prologue
    .line 58
    sget-boolean v1, Lcom/ledo/fantasy/game/IcefireHelper;->sInited:Z

    if-nez v1, :cond_2f

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 61
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    sput-object p1, Lcom/ledo/fantasy/game/IcefireHelper;->sIcefireHelperListener:Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;

    .line 63
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/ledo/fantasy/game/IcefireHelper;->sPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/IcefireHelper;->sCacheDirectory:Ljava/lang/String;

    .line 69
    new-instance v1, Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IcefireMusic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    .line 70
    new-instance v1, Lcom/ledo/fantasy/game/IcefireSound;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IcefireSound;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/IcefireHelper;->sAssetManager:Landroid/content/res/AssetManager;

    .line 73
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ledo/fantasy/game/IcefireHelper;->sInited:Z

    .line 76
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2f
    return-void
.end method

.method public static isBackgroundMusicPlaying()Z
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method private static native nativeSetExternalAssetPath(Ljava/lang/String;)V
.end method

.method public static onPause()V
    .registers 0

    .prologue
    .line 234
    return-void
.end method

.method public static onResume()V
    .registers 0

    .prologue
    .line 228
    return-void
.end method

.method public static pauseAllEffects()V
    .registers 1

    .prologue
    .line 200
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireSound;->pauseAllEffects()V

    .line 201
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .registers 1

    .prologue
    .line 144
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->pauseBackgroundMusic()V

    .line 145
    return-void
.end method

.method public static pauseEffect(I)V
    .registers 2
    .param p0, "soundId"    # I

    .prologue
    .line 180
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireSound;->pauseEffect(I)V

    .line 181
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "pPath"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 136
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0, p0, p1}, Lcom/ledo/fantasy/game/IcefireMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 172
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0, p1}, Lcom/ledo/fantasy/game/IcefireSound;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .registers 2
    .param p0, "pPath"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireSound;->preloadEffect(Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public static resumeAllEffects()V
    .registers 1

    .prologue
    .line 204
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireSound;->resumeAllEffects()V

    .line 205
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->resumeBackgroundMusic()V

    .line 141
    return-void
.end method

.method public static resumeEffect(I)V
    .registers 2
    .param p0, "soundId"    # I

    .prologue
    .line 176
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireSound;->resumeEffect(I)V

    .line 177
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .registers 1

    .prologue
    .line 152
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->rewindBackgroundMusic()V

    .line 153
    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .registers 1
    .param p0, "interval"    # F

    .prologue
    .line 124
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .registers 2
    .param p0, "volume"    # F

    .prologue
    .line 164
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireMusic;->setBackgroundVolume(F)V

    .line 165
    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .registers 3
    .param p0, "pResult"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sIcefireHelperListener:Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;

    new-instance v1, Lcom/ledo/fantasy/game/IcefireHelper$1;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IcefireHelper$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public static setEffectsVolume(F)V
    .registers 2
    .param p0, "volume"    # F

    .prologue
    .line 192
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireSound;->setEffectsVolume(F)V

    .line 193
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 241
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sIcefireHelperListener:Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;

    invoke-interface {v0, p0, p1}, Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private static showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 13
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pInputMode"    # I
    .param p3, "pInputFlag"    # I
    .param p4, "pReturnType"    # I
    .param p5, "pMaxLength"    # I

    .prologue
    .line 245
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sIcefireHelperListener:Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;->showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 246
    return-void
.end method

.method public static stopAllEffects()V
    .registers 1

    .prologue
    .line 208
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireSound;->stopAllEffects()V

    .line 209
    return-void
.end method

.method public static stopBackgroundMusic()V
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dMusic:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->stopBackgroundMusic()V

    .line 149
    return-void
.end method

.method public static stopEffect(I)V
    .registers 2
    .param p0, "soundId"    # I

    .prologue
    .line 184
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireSound;->stopEffect(I)V

    .line 185
    return-void
.end method

.method public static terminateProcess()V
    .registers 1

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 238
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/ledo/fantasy/game/IcefireHelper;->sCocos2dSound:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireSound;->unloadEffect(Ljava/lang/String;)V

    .line 197
    return-void
.end method
