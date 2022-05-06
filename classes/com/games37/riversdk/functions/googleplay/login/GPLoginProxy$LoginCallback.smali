.class public interface abstract Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;
.super Ljava/lang/Object;
.source "GPLoginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginCallback"
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method
