.class public Lcom/ledo/fantasy/game/ArcVoiceManager;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"


# static fields
.field private static final mAppCredentials:Ljava/lang/String; = "OVTG8HZ8PSXFCCJ6MLQO67566MY9636O"

.field private static final mAppId:Ljava/lang/String; = "PWLDGJHX"

.field private static mArcVoice:Lcom/talkray/arcvoice/ArcVoice;

.field private static mAudioFileDirectory:Ljava/lang/String;

.field private static mAudioRecorder:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

.field private static mDownloadUrl:Ljava/lang/String;

.field private static mPcmSuffix:Ljava/lang/String;

.field private static mTmfSuffix:Ljava/lang/String;

.field private static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mTmfSuffix:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mPcmSuffix:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mDownloadUrl:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mUserId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DownloadArcAudioFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mTmfSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "currentDownloadFile":Ljava/lang/String;
    sget-object v1, Lcom/ledo/fantasy/game/ArcVoiceManager;->mArcVoice:Lcom/talkray/arcvoice/ArcVoice;

    invoke-virtual {v1, p0, v0}, Lcom/talkray/arcvoice/ArcVoice;->downloadArcAudioFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static GetDownLoadUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 272
    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static InitSdkAndUserInfo(Ljava/lang/String;)V
    .registers 12
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 55
    sput-object p0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mUserId:Ljava/lang/String;

    .line 56
    const-string v0, ".tmf"

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mTmfSuffix:Ljava/lang/String;

    .line 57
    const-string v0, ".pcm"

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mPcmSuffix:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/AudioFiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/ledo/fantasy/game/ArcVoiceManager;->cleanAllAudioFiles()V

    .line 61
    new-instance v9, Ljava/io/File;

    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v9, "audioFolder":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    .line 63
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 65
    :cond_36
    new-instance v6, Lcom/ledo/fantasy/game/ArcVoiceManager$1;

    invoke-direct {v6}, Lcom/ledo/fantasy/game/ArcVoiceManager$1;-><init>()V

    .line 99
    .local v6, "arcVoiceEventHandler":Lcom/talkray/arcvoice/ArcVoiceEventHandler;
    new-instance v8, Lcom/ledo/fantasy/game/ArcVoiceManager$2;

    invoke-direct {v8}, Lcom/ledo/fantasy/game/ArcVoiceManager$2;-><init>()V

    .line 152
    .local v8, "arcMessagingEventHandler":Lcom/talkray/arcvoice/ArcMessagingEventHandler;
    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mArcVoice:Lcom/talkray/arcvoice/ArcVoice;

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/talkray/arcvoice/ArcVoice;->getInstance()Lcom/talkray/arcvoice/ArcVoice;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mArcVoice:Lcom/talkray/arcvoice/ArcVoice;

    .line 153
    :cond_4a
    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mArcVoice:Lcom/talkray/arcvoice/ArcVoice;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    const-string v2, "PWLDGJHX"

    const-string v3, "OVTG8HZ8PSXFCCJ6MLQO67566MY9636O"

    sget-object v4, Lcom/talkray/arcvoice/ArcRegion;->BEIJING:Lcom/talkray/arcvoice/ArcRegion;

    sget-object v5, Lcom/ledo/fantasy/game/ArcVoiceManager;->mUserId:Ljava/lang/String;

    sget-object v7, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/talkray/arcvoice/ArcVoice;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcRegion;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoiceEventHandler;Ljava/lang/String;Lcom/talkray/arcvoice/ArcMessagingEventHandler;)V

    .line 155
    new-instance v10, Lcom/ledo/fantasy/game/ArcVoiceManager$3;

    invoke-direct {v10}, Lcom/ledo/fantasy/game/ArcVoiceManager$3;-><init>()V

    .line 204
    .local v10, "audioRecordingHandler":Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;
    invoke-static {}, Lcom/talkray/arcvoice/ArcVoice;->getInstance()Lcom/talkray/arcvoice/ArcVoice;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/talkray/arcvoice/ArcVoice;->getAudioRecorder(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioRecorder:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    .line 205
    return-void
.end method

.method public static StartPlayingAudioRecording(Ljava/lang/String;)V
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mTmfSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "currentPlayingFile":Ljava/lang/String;
    sget-object v1, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioRecorder:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    invoke-virtual {v1, v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->startPlayingAudioRecording(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public static StartRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "tmfFileName"    # Ljava/lang/String;
    .param p1, "pcmFileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 239
    invoke-static {}, Lcom/ledo/fantasy/game/ArcVoiceManager;->checkAudioPermission()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 240
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v2, v3

    .line 241
    .local v2, "permissions":[Ljava/lang/String;
    sget-object v3, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 242
    const-string v3, "InitSdkAndUserInfo"

    const-string v4, "requestPermissions RECORD_AUDIO"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v2    # "permissions":[Ljava/lang/String;
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ledo/fantasy/game/ArcVoiceManager;->mTmfSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "currentRecordingTmfFile":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ledo/fantasy/game/ArcVoiceManager;->mPcmSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "currentRecordingPcmFile":Ljava/lang/String;
    sget-object v3, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioRecorder:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    invoke-virtual {v3, v1, v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static StopPlayingAudioRecording()V
    .registers 2

    .prologue
    .line 251
    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioRecorder:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->stopPlayingAudioRecording()V

    .line 252
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$4;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/ArcVoiceManager$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public static StopRecordingAudio()V
    .registers 2

    .prologue
    .line 262
    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioRecorder:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->stopRecordingAudio()V

    .line 263
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$5;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/ArcVoiceManager$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public static UploadArcAudio(Ljava/lang/String;)V
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mTmfSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "currentUploadFile":Ljava/lang/String;
    sget-object v1, Lcom/ledo/fantasy/game/ArcVoiceManager;->mArcVoice:Lcom/talkray/arcvoice/ArcVoice;

    invoke-virtual {v1, v0}, Lcom/talkray/arcvoice/ArcVoice;->uploadArcAudioFile(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 22
    sput-object p0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    invoke-static {p0}, Lcom/ledo/fantasy/game/ArcVoiceManager;->getFileNameByFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkAudioPermission()I
    .registers 3

    .prologue
    const/16 v2, 0x17

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_8

    .line 38
    const/4 v0, 0x0

    .line 50
    .local v0, "r":I
    :goto_7
    return v0

    .line 40
    .end local v0    # "r":I
    :cond_8
    const/4 v0, -0x1

    .line 41
    .restart local v0    # "r":I
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_29

    .line 42
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_20

    .line 43
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 44
    goto :goto_7

    .line 45
    :cond_20
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 47
    goto :goto_7

    .line 48
    :cond_29
    const/4 v0, -0x1

    goto :goto_7
.end method

.method private static cleanAllAudioFiles()V
    .registers 2

    .prologue
    .line 209
    const-string v0, "ArcVoiceManager"

    const-string v1, "cleanAllAudioFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->RemoveDir(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private static getFileNameByFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v2, Lcom/ledo/fantasy/game/ArcVoiceManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "fileNameWithSuffix":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "fileName":Ljava/lang/String;
    return-object v0
.end method
