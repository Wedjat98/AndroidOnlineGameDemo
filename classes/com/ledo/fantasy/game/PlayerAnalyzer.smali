.class public final Lcom/ledo/fantasy/game/PlayerAnalyzer;
.super Ljava/lang/Object;
.source "PlayerAnalyzer.java"


# static fields
.field private static s_bFirstPlayGameCurInstall:Z

.field private static s_bHasEnterGameSceneCurInstall:Z

.field private static s_ledo_mapEventTAGCurPlayed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static s_umeng_mapEventTAGCurPlayed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/PlayerAnalyzer;->s_ledo_mapEventTAGCurPlayed:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/PlayerAnalyzer;->s_umeng_mapEventTAGCurPlayed:Ljava/util/HashMap;

    .line 110
    sput-boolean v1, Lcom/ledo/fantasy/game/PlayerAnalyzer;->s_bFirstPlayGameCurInstall:Z

    .line 112
    sput-boolean v1, Lcom/ledo/fantasy/game/PlayerAnalyzer;->s_bHasEnterGameSceneCurInstall:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameSoMd5()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    const-string v0, ""

    return-object v0
.end method

.method public static ledo_RecordEventMultiTimeOnePlay(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 194
    return-void
.end method

.method public static ledo_RecordEventOneTimeAtFirstPlayOneInstall(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public static ledo_RecordEventOneTimeOneInstall(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 204
    return-void
.end method

.method public static ledo_RecordEventOneTimeOnePlay(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method

.method public static ledo_RecordEventOneTimeOnePlayTilEnterScene(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 211
    return-void
.end method

.method public static ledo_initSDK()V
    .registers 0

    .prologue
    .line 154
    return-void
.end method

.method public static ledo_releaseSDK()V
    .registers 0

    .prologue
    .line 161
    return-void
.end method

.method public static setAnalyzerEnable(Z)V
    .registers 1
    .param p0, "bEnable"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public static setFristPlayGameCurInstall(Z)V
    .registers 1
    .param p0, "bFirst"    # Z

    .prologue
    .line 121
    return-void
.end method

.method public static setHasEnterGameSceneCurInstall(Z)V
    .registers 1
    .param p0, "bHasEnter"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public static umeng_RecordEventMultiTimeOnePlay(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 285
    return-void
.end method

.method public static umeng_RecordEventOneTimeAtFirstPlayOneInstall(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 262
    return-void
.end method

.method public static umeng_RecordEventOneTimeOnePlay(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method

.method public static umeng_RecordEventOneTimeOnePlayTilEnterScene(Ljava/lang/String;)V
    .registers 1
    .param p0, "strEventID"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method public static umeng_RecordEventWithProperty(Ljava/lang/String;)V
    .registers 1
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 400
    return-void
.end method

.method public static umeng_RecordEventWithPropertyAndData(Ljava/lang/String;)V
    .registers 1
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 525
    return-void
.end method

.method public static umeng_initSDK()V
    .registers 0

    .prologue
    .line 227
    return-void
.end method

.method public static umeng_onPause(Landroid/content/Context;)V
    .registers 1
    .param p0, "txt"    # Landroid/content/Context;

    .prologue
    .line 247
    return-void
.end method

.method public static umeng_onResume(Landroid/content/Context;)V
    .registers 1
    .param p0, "txt"    # Landroid/content/Context;

    .prologue
    .line 237
    return-void
.end method

.method public static umeng_saveStas()V
    .registers 0

    .prologue
    .line 533
    return-void
.end method

.method public static upload_lua_err(Ljava/lang/String;)V
    .registers 1
    .param p0, "err"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method
