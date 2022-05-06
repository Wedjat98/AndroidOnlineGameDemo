.class public Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;
.super Ljava/lang/Object;
.source "Cocos2dxLuaJavaBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native callLuaFunctionWithString(ILjava/lang/String;)I
.end method

.method public static native callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native releaseLuaFunction(I)I
.end method

.method public static native retainLuaFunction(I)I
.end method
