.class public abstract Lcom/games37/riversdk/core/callback/SDKCallback;
.super Lcom/games37/riversdk/core/callback/BaseCallback;
.source "SDKCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onResult(ILjava/util/Map;)V
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
.end method
