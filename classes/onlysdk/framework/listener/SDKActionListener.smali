.class public abstract Lonlysdk/framework/listener/SDKActionListener;
.super Ljava/lang/Object;
.source "SDKActionListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSDKActionResult(Lonlysdk/framework/enumtype/SDKActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonlysdk/framework/enumtype/SDKActionResultCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
