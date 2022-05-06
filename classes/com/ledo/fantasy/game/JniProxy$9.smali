.class Lcom/ledo/fantasy/game/JniProxy$9;
.super Ljava/lang/Object;
.source "JniProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/JniProxy;->onLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 262
    # invokes: Lcom/ledo/fantasy/game/JniProxy;->nativeOnLogout()V
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->access$2()V

    .line 263
    return-void
.end method
