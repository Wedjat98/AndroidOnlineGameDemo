.class public Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;
.super Ljava/lang/Object;
.source "IcefireSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/game/IcefireSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/IcefireSound;


# direct methods
.method public constructor <init>(Lcom/ledo/fantasy/game/IcefireSound;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 10
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 323
    if-nez p3, :cond_41

    .line 326
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    # getter for: Lcom/ledo/fantasy/game/IcefireSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ledo/fantasy/game/IcefireSound;->access$0(Lcom/ledo/fantasy/game/IcefireSound;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 342
    :goto_12
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    # getter for: Lcom/ledo/fantasy/game/IcefireSound;->mSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/ledo/fantasy/game/IcefireSound;->access$3(Lcom/ledo/fantasy/game/IcefireSound;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 343
    return-void

    .line 326
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;

    .line 327
    .local v0, "info":Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;
    iget v2, v0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->soundID:I

    if-ne p2, v2, :cond_c

    .line 329
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    iget-object v3, v0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    iget v4, v0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->soundID:I

    iget-boolean v5, v0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->isLoop:Z

    # invokes: Lcom/ledo/fantasy/game/IcefireSound;->doPlayEffect(Ljava/lang/String;IZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/ledo/fantasy/game/IcefireSound;->access$1(Lcom/ledo/fantasy/game/IcefireSound;Ljava/lang/String;IZ)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/IcefireSound;->access$2(Lcom/ledo/fantasy/game/IcefireSound;I)V

    .line 333
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    # getter for: Lcom/ledo/fantasy/game/IcefireSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ledo/fantasy/game/IcefireSound;->access$0(Lcom/ledo/fantasy/game/IcefireSound;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 339
    .end local v0    # "info":Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;
    :cond_41
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/IcefireSound;->access$2(Lcom/ledo/fantasy/game/IcefireSound;I)V

    goto :goto_12
.end method
