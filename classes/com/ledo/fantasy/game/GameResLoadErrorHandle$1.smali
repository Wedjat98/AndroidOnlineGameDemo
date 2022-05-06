.class Lcom/ledo/fantasy/game/GameResLoadErrorHandle$1;
.super Ljava/lang/Object;
.source "GameResLoadErrorHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameResLoadErrorHandle;->showMessageBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 15
    invoke-static {}, Lcom/ledo/fantasy/game/GameResLoadErrorHandle;->resLoadErrorHandle()V

    .line 16
    return-void
.end method
