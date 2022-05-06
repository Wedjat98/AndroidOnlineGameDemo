.class Lcom/ledo/fantasy/game/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/CameraActivity;->onClipPhotoFinished(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/CameraActivity;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/CameraActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/CameraActivity$3;->this$0:Lcom/ledo/fantasy/game/CameraActivity;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 362
    # getter for: Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;
    invoke-static {}, Lcom/ledo/fantasy/game/CameraActivity;->access$0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/ledo/fantasy/game/GameJNILib;->OnTakePhotoFinish(Ljava/lang/String;)V

    .line 364
    return-void
.end method
