.class Lcom/ledo/fantasy/game/IFlyTekManager$4;
.super Ljava/lang/Object;
.source "IFlyTekManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IFlyTekManager;->writeAudio(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$buffers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/IFlyTekManager$4;->val$buffers:Ljava/util/ArrayList;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 230
    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$3()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v3

    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$4()Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    move-result v0

    .line 231
    .local v0, "code":I
    if-eqz v0, :cond_22

    .line 232
    const-string v3, "IFlyTek"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start IFlyTek error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget-object v3, p0, Lcom/ledo/fantasy/game/IFlyTekManager$4;->val$buffers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_33

    .line 243
    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$3()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    .line 244
    return-void

    .line 236
    :cond_33
    :try_start_33
    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$3()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v5

    iget-object v3, p0, Lcom/ledo/fantasy/game/IFlyTekManager$4;->val$buffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ledo/fantasy/game/IFlyTekManager$4;->val$buffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v5, v3, v6, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->writeAudio([BII)I

    .line 237
    const-wide/16 v4, 0x28

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_51} :catch_54

    .line 234
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 238
    :catch_54
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_51
.end method
