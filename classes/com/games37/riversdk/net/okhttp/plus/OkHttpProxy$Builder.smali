.class public final Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;
.super Ljava/lang/Object;
.source "OkHttpProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-direct {v0}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;-><init>()V

    sput-object v0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    .registers 4

    .prologue
    .line 122
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    sget-object v1, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>(Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$1;)V

    return-object v0
.end method

.method public setCookie(Landroid/content/Context;Z)Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setCookie"    # Z

    .prologue
    .line 112
    sget-object v0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->setCookieFlag(Landroid/content/Context;Z)V

    .line 113
    return-object p0
.end method

.method public setDebug(Z)Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;
    .registers 3
    .param p1, "isDebug"    # Z

    .prologue
    .line 117
    sget-object v0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->setDebug(Z)V

    .line 118
    return-object p0
.end method

.method public setTimeout(I)Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->setTimeout(I)V

    .line 108
    return-object p0
.end method
