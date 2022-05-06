.class public interface abstract Lcom/games37/riversdk/core/callback/NetCallback;
.super Ljava/lang/Object;
.source "NetCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract callbackError(Ljava/lang/String;)V
.end method

.method public abstract callbackSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
