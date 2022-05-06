.class public Lcom/gm99/fzzj/application/Gm99Application;
.super Lcom/games37/riversdk/core/RiverSDKApplication;
.source "Gm99Application.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/games37/riversdk/core/RiverSDKApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/RiverSDKApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 12
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 13
    return-void
.end method
