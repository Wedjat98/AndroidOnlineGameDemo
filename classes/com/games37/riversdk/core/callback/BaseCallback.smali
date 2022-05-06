.class public abstract Lcom/games37/riversdk/core/callback/BaseCallback;
.super Ljava/lang/Object;
.source "BaseCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .registers 3
    .param p1, "stateCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onViewDismiss()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public onViewShow()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method
