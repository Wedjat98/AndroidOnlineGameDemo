.class Lcom/ledo/fantasy/game/ArcVoiceManager$2$1;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager$2;->onAudioFileUploadSuccess(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$2$1;->this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$2;

    iput-object p2, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$2$1;->val$filePath:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$2$1;->val$filePath:Ljava/lang/String;

    # invokes: Lcom/ledo/fantasy/game/ArcVoiceManager;->getFileNameByFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/ledo/fantasy/game/ArcVoiceManager;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/GameJNILib;->onFileUploadResult(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method
