.class Lcom/ledo/fantasy/game/NativeCrashManager$1;
.super Ljava/lang/Thread;
.source "NativeCrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/NativeCrashManager;->checkLuaErrorAndUploadLordTestLogIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 151
    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->isHaveLuaErrorWithUploadLordTestLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    :cond_6
    return-void
.end method
