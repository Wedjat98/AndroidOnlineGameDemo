.class Lcom/ledo/fantasy/game/ArcVoiceManager$2$4;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager$2;->onAudioFileDownloadFailure(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$2;

.field private final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/ArcVoiceManager$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$2$4;->this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$2;

    iput-object p2, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$2$4;->val$filePath:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$2$4;->val$filePath:Ljava/lang/String;

    # invokes: Lcom/ledo/fantasy/game/ArcVoiceManager;->getFileNameByFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/ledo/fantasy/game/ArcVoiceManager;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/GameJNILib;->onFileDownLoadResult(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method
